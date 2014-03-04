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
      topic = CollectionTopic.new(author_ids: [7, 8, 9])
      MeducationSDK::Author.expects(:where).with(id: [7, 8, 9])
      topic.authors
    end
    def test_users_calls_spi
      authors = [
        Author.new(user_id: 8),
        Author.new(user_id: 10)
      ]
      topic = CollectionTopic.new(author_ids: [7, 8, 9])
      MeducationSDK::Author.expects(:where).with(id: [7, 8, 9]).returns(authors)
      MeducationSDK::User.expects(:where).with(id: [8, 10])
      topic.users
    end
  end
end
