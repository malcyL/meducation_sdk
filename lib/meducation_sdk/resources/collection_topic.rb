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
      id: 1,
      title: "Al's Medicine Tutorial",
      comment_ids: [4,5,6],
      rating: 10,
      views_in_last_30_days: 30,
      views_in_last_60_days: 60
    }
  end
end
