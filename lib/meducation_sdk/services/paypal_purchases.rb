require 'open-uri'

module MeducationSDK
  class PaypalPurchases
    include Helpers

    def self.new_purchase(user, purchase_option_id, return_url, cancel_return_url)
      new.new_purchase(user, purchase_option_id, return_url, cancel_return_url)
    end

    def self.create(basket_id, token)
      new.create(basket_id, token)
    end

    def new_purchase(user, purchase_option_id, return_url, cancel_return_url)
      results = Loquor.get(URI::encode("/paypal_purchases/new?user[signup_email]=#{user['signup_email']}&user[full_name]=#{user['full_name']}&user[password]=#{user['password']}&user[password_confirmation]=#{user['password_confirmation']}&purchase_option_id=#{purchase_option_id}&return_url=#{return_url}&cancel_return_url=#{cancel_return_url}"))
      results["url"]
    end

    def create(basket_id, token)
      Loquor.post("/paypal_purchases", {basket_id: basket_id, token: token})
    end

  end
end
