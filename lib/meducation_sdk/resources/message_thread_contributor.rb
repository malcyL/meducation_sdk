module MeducationSDK
  class MessageThreadContributor < Loquor::Resource
    self.path = "/message_threads"
  end

  class MessageThreadContributorMock < MessageThreadContributor
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1
    }
  end
end
