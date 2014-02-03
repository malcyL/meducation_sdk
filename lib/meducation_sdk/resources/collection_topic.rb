module MeducationSDK

  class CollectionTopic < Loquor::Resource

    self.path = "/collection_topics"

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= Comment.where(id: comment_ids)
    end

  end

  class CollectionTopicMock < CollectionTopic
    extend Loquor::ResourceMock

    self.attributes = {
      id: 728463,
      title: 'This is a mock collection topic',
      description: 'This is a sample description',
      collection_id: 1,
      section_id: 17,
      resource_ids: [3, 4, 5],
      views_in_last_30_days: 1,
      views_in_last_60_days: 2,
      rating: 123
    }

  end

end
