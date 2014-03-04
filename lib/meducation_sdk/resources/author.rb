module MeducationSDK

  class Author < Resource
    self.path = "/authors"

    def user
      @user ||= User.find(user_id)
    end
  end

  class AuthorMock < Author
    extend Loquor::ResourceMock

    self.attributes = {
      id: 728,
      user_id: 100,
      name: 'Dr Buick',
      occupation: "Doctor",
      qualifications: "All of them"
    }
  end

end
