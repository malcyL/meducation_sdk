module MeducationSDK
  class UserConnection < Resource
    self.path = "/user_connections"

    def user
      @user ||= User.find(user_id)
    end

    def connected_user
      @connected_user ||= User.find(connected_user_id)
    end
  end

  class UserConnectionMock < UserConnection
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      connected_user_id: 9,
    }
  end
end
