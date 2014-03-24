require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class CollectionTopicTest < ResourceTest
    test_resource(CollectionTopic, '/collection_topics')

    def test_comments_calls_sdk
      topic = CollectionTopic.new(comment_ids: [7, 8, 9])
      MeducationSDK::Comment.expects(:where).with(id: [7, 8, 9])
      topic.comments
    end

    def test_authors_calls_spi
      authors = [
        Author.new(user_id: 8),
        Author.new(user_id: 10)
      ]
      topic = CollectionTopic.new(author_ids: [7, 8, 9])
      MeducationSDK::Author.expects(:where).with(id: [7, 8, 9]).returns(authors)
      assert_equal authors, topic.authors
      assert_equal authors, topic.instance_variable_get(:@authors)
    end

    def test_collection_calls_spi
      topic = CollectionTopic.new(collection_id: 373)
      MeducationSDK::Collection.expects(:find).with(373)
      topic.collection
    end

    def test_users_calls_spi
      authors = [
        Author.new(user_id: 8),
        Author.new(user_id: 10)
      ]
      users = [
        User.new(id: 8),
        User.new(id: 10),
      ]
      topic = CollectionTopic.new(author_ids: [7, 8, 9])
      MeducationSDK::Author.expects(:where).with(id: [7, 8, 9]).returns(authors)
      MeducationSDK::User.expects(:where).with(id: [8, 10]).returns(users)
      assert_equal users, topic.users
      assert_equal users, topic.instance_variable_get(:@users)
    end
  end
end
