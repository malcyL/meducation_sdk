module MeducationSDK
  class EcommerceSubscription < Loquor::Resource
    self.path = "/ecommerce_subscriptions"

    def user
      @user ||= User.find(user_id)
    end
  end

  class EcommerceSubscriptionMock < EcommerceSubscription
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 89,
      product_id: 1
    }
  end
end
