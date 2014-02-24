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
  end
end

