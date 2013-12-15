module MeducationSDK
  class GroupDiscussionPost < Loquor::Resource
    self.path = "/group_discussion_posts"

    def user
      @user ||= User.find(user_id)
    end

    def discussion
      @discussion ||= GroupDiscussion.find(discussion_id)
    end
  end

  class GroupDiscussionPostMock < GroupDiscussionPost
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 3,
      discussion_id: 8,
      parsed_content: "The content of my post"
    }
  end
end


