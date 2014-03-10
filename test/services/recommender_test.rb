require_relative '../test_helper'

module MeducationSDK
  class RecommenderTest < Minitest::Test

    def empty_response
      mock(body: '[]')
    end

    def item
      @item ||= MediaFile.new({id: 10})
    end

    def item2
      @item2 ||= MediaFile.new({id: 56})
    end

    def test_should_call_new
      Recommender.expects(:new).with(item, {}).returns(mock(recommend: nil))
      Recommender.recommend(item)
    end

    def test_should_proxy_to_recommend
      Recommender.any_instance.expects(:recommend)
      Recommender.recommend(nil)
    end

    def test_should_call_the_recommender_service
      Net::HTTP.expects(:get_response).with("recommender.meducation.net", "/MediaFile/#{item.id}", 4567).returns(empty_response)
      Recommender.new(item).recommend
    end

    def test_should_call_parse_results_of_recommendation_service
      json = [
        {"type" => "MediaFile", "id" => item.id, "score" => 0.0097},
        {"type" => "MediaFile", "id" => item2.id, "score" => 0.0078}
      ].to_json

      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: [item.id, item2.id]}).returns([item, item2])
      items = Recommender.new(item).recommend
      assert_equal [item, item2], items
    end

    def test_should_limit_correctly
      items = 6.times.map { |x| MediaFile.new({id: x}) }
      json = items.map {|item| {"type" => "MediaFile", "id" => item.id, "score" => 0.0097} }.to_json

      Net::HTTP.expects(:get_response).returns(mock(body: json))
      MediaFile.expects(:where).with({id: items[0..2].map(&:id)}).returns(items[0..2])
      results = Recommender.new(item, limit: 3).recommend
    end

    def test_should_log_an_exception
      Net::HTTP.expects(:get_response).raises(StandardError)
      MeducationSDK.config.logger.expects(:error).with("!!Recommender Error!!")
      MeducationSDK.config.logger.expects(:error).with("StandardError")
      Recommender.new(item).recommend
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
  end
end
