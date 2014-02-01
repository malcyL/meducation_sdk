require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CollectionTopicTest < ResourceTest
    test_resource(CollectionTopic, '/collection_topics')

    def test_comments_calls_sdk
      topic = CollectionTopic.new(comment_ids: [7,8,9])
      MeducationSDK::Comment.expects(:where).with(id: [7,8,9])
      topic.comments
    end
  end
end

