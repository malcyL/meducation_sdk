module MeducationSDK
  class MessageThreadContributor < Loquor::Resource
    self.path = "/message_threads"
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
