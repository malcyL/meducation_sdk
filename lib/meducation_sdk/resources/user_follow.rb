module MeducationSDK
  class UserFollow < Resource
    self.path = "/user_follows"

    def user
      @user ||= User.find(user_id)
    end

    def followee
      @followee ||= User.find(followee_id)
    end
  end

  class UserFollowMock < UserFollow
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      followee_id: 9,
      accept_code: "asdsad21312e"
    }
  end
end
