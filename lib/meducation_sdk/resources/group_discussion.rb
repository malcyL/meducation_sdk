module MeducationSDK
  class GroupDiscussion < Loquor::Resource
    self.path = "/group_discussions"

    def group
      @group ||= Group.find(group_id)
    end

    def started_by
      @started_by ||= User.find(started_by_id)
    end

    def posts
      @posts = GroupDiscussionPost.where(discussion_id: id)
    end
  end

  class GroupDiscussionMock < GroupDiscussion
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      group_id: 8,
      started_by: 7
    }
  end
end

