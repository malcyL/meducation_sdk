module MeducationSDK
  class Community < Loquor::Resource
    self.path = "/communities"
  end

  class CommunityMock < Community
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Some Community Name"
    }
  end
end
