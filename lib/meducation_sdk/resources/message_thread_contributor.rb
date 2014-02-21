module MeducationSDK
  class MessageThreadContributor < Resource
    self.path = "/message_thread_contributors"

    def user
      @user ||= User.find(user_id)
    end
  end

  class MessageThreadContributorMock < MessageThreadContributor
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      thread_id: 10,
      user_id: 20,
      has_read: false
    }
  end
end
