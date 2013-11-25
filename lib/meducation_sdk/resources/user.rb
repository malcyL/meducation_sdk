module MeducationSDK
  class User < Loquor::Resource
    self.path = "/users"
  end

  class UserMock < User
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Jeremy Walker"
    }
  end
end
