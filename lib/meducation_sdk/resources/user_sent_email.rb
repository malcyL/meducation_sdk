module MeducationSDK
  class UserSentEmail < Resource
    self.path = "/user_sent_emails"

    def user
      @user ||= User.find(user_id)
    end
  end

  class UserSentEmailMock < UserSentEmail
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      email_code: "m_email_code"
    }
  end
end