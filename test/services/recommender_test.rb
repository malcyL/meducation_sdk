require_relative '../test_helper'

module MeducationSDK
  class RecommenderTest < Minitest::Test

    def setup
      @per_result = mock
      @per_result.stubs(where: @per_result)
      @per_result.stubs(order: @per_result)
      @per_result.stubs(per: @per_result)
      @per_result.stubs(to_a: [])
    end

    def empty_response
      mock(body: '[]')
    end

    def item
      @item ||= MediaFile.new({id: 10})
    end

    def item2
      @item2 ||= MediaFile.new({id: 56})
    end

    def item3
      @item3 ||= MediaFile.new({id: 57})
    end

    def test_should_call_new
      Recommender.expects(:new).with(item, {}).returns(mock(recommend: nil))
      Recommender.recommend(item)
    end

    def test_should_call_user_recommnder_new_with_user
      user = User.new({})
      Recommender::UserRecommender.expects(:new).with(user, {}).returns(mock(recommend: nil))
      Recommender.recommend(user)
    end

    def test_should_proxy_to_recommend
      Recommender.any_instance.expects(:recommend)
      Recommender.recommend(nil)
    end

    def test_should_use_items_not_board_items
      Net::HTTP.expects(:get_response).with("recommender.meducation.net", "/combined?MediaFile/#{item.id}", 4567).returns(empty_response)
      item = BoardItem.new(item_type: "MediaFile", item_id: 10)
      Recommender.new(item).recommend
    end

    def test_should_call_the_recommender_service_for_individual_recommendation
      @per_result.expects(:per).with(5).returns(@per_result)
      Net::HTTP.expects(:get_response).with("recommender.meducation.net", "/combined?MediaFile/#{item.id}", 4567).returns(empty_response)
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      Recommender.new(item).recommend
    end

    def test_should_call_the_recommender_service_for_multiple_recommendations
      @per_result.expects(:per).with(5).returns(@per_result)
      @per_result.stubs(to_a: [item, item2, item3])
      Net::HTTP.expects(:get_response).with("recommender.meducation.net", "/combined?MediaFile/#{item.id}&MediaFile/#{item2.id}&MediaFile/#{item3.id}", 4567).returns(empty_response)
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      Recommender.new([item, item2, item3]).recommend
    end

    def test_should_call_parse_results_of_recommendation_service
      json = [
        {"type" => "MediaFile", "id" => item.id, "score" => 0.0097},
        {"type" => "MediaFile", "id" => item2.id, "score" => 0.0078}
      ].to_json

      @per_result.expects(:per).with(3).returns(@per_result)
      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: [item.id, item2.id]}).returns([item, item2])
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      items = Recommender.new(item).recommend
      assert_equal [item, item2], items
    end

    def test_should_not_get_more_resources_if_enough_recommendations
      json = [
        {"type" => "MediaFile", "id" => item.id, "score" => 0.0097},
        {"type" => "MediaFile", "id" => item2.id, "score" => 0.0078}
      ].to_json

      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: [item.id, item2.id]}).returns([item, item2])
      MediaFile.expects(:where).with('rating > 2').never
      items = Recommender.new(item, limit: 2).recommend
      assert_equal [item, item2], items
    end

    def test_should_get_more_resources_if_too_few_recommendations
      json = [
        {"type" => "MediaFile", "id" => item.id, "score" => 0.0097},
        {"type" => "MediaFile", "id" => item2.id, "score" => 0.0078}
      ].to_json

      limit = 5

      @per_result.expects(:per).with(3).returns(@per_result)
      @per_result.stubs(to_a: [item3])

      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: [item.id, item2.id]}).returns([item, item2])
      good_resources = mock
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      @per_result.expects(:where).with(safe_for_email: true).returns(@per_result)
      items = Recommender.new(item, limit: limit).recommend
      assert_equal [item, item2, item3], items
    end

    def test_should_limit_correctly
      items = 6.times.map { |x| MediaFile.new({id: x}) }
      json = items.map {|item| {"type" => "MediaFile", "id" => item.id, "score" => 0.0097} }.to_json

      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: items[0..2].map(&:id)}).returns(items[0..2])
      results = Recommender.new(item, limit: 3).recommend
    end

    def test_should_log_recommender_exception
      @per_result.expects(:per).with(5).returns(@per_result)
      @per_result.stubs(to_a: [item3])
      Net::HTTP.expects(:get_response).raises(StandardError)
      MeducationSDK.config.logger.expects(:error).with("!!Recommender Error!!")
      MeducationSDK.config.logger.expects(:error).with("StandardError")
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      Recommender.new(item).recommend
    end

    def test_should_get_good_resources_if_error_from_recommender
      @per_result.expects(:per).with(5).returns(@per_result)
      @per_result.stubs(to_a: [item3])
      Net::HTTP.expects(:get_response).raises(StandardError)
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      items = Recommender.new(item).recommend
      assert_equal [item3], items
    end

    def test_should_get_good_resources_if_error_from_recommender
      @per_result.expects(:per).with(5).returns(@per_result)
      @per_result.stubs(to_a: [item3])
      Net::HTTP.expects(:get_response).raises(StandardError)
      MediaFile.expects(:where).with('rating > 2').returns(@per_result)
      @per_result.expects(:where).with(safe_for_email: true).returns(@per_result)
      items = Recommender.new(item).recommend
      assert_equal [item3], items
    end

    def test_should_catch_an_exception_and_render_backup_recommendations
      skip
      recommendation = Item::Recommendation.create!(
        item_type: item.class.name, item_id: item.id, jaccard_similarity: 1,
        recommendation_type: item2.class.name, recommendation_id: item2.id
      )
      Net::HTTP.expects(:get_response).raises(StandardError)
      items = Recommender.new(item).recommend
      assert_equal [item2], items
    end

    def test_user_recommender_calls_spi
      user = User.new({id: 2})
      recommender = Recommender::UserRecommender.new(user)
      Loquor.expects(:get).with("items/recommendations_for_user", user_id: user.id).returns([])
      recommender.recommend
    end

    def test_user_recommender_calls_return_objects
      user = User.new({id: 2})
      response = [{type: "MediaFile", id: 8}, {type: "ExternalResource", id: 22}]
      recommender = Recommender::UserRecommender.new(user)
      Loquor.expects(:get).returns(response)
      results = recommender.recommend

      assert results[0].is_a?(MediaFile)
      assert_equal 8, results[0].id

      assert results[1].is_a?(ExternalResource)
      assert_equal 22, results[1].id
    end
  end
end
