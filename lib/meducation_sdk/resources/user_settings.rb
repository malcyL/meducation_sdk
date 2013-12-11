module MeducationSDK
  class UserSettings < Loquor::Resource
    self.path = "/user_settings"
  end

  class UserSettingsMock < UserSettings
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      email_on_comment: true
    }
  end
end
