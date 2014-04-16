module MeducationSDK
  class UserDiscountCode < Resource
    self.path = "/user_discount_codes"

    def user
      @user ||= User.find(user_id)
    end
  end

  class UserDiscountCodeMock < UserDiscountCode
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 16,
      product_id: 1,
      code: "1234567890",
      expires_at: "2014-05-10",
      created_at: "2013-04-20"
    }
  end
end

