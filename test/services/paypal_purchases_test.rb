require 'open-uri'
require_relative '../test_helper'

module MeducationSDK
  class PaypalPurchasesTest < Minitest::Test

    def setup
      @user = {
        "full_name" => "Joe Blogs",
        "signup_email" => "1@redacted.example.com",
        "password" => "Password",
        "password_confirmation" => "Password",
      }

      @purchase_option_id = 1

       @basket_id = 64237

       @token = "abcdef"

       @return_url = "http://localhost/return"
       @cancel_return_url = "http://localhost/cancel_return"
    end

    def test_create
      Loquor.expects(:post).with("/paypal_purchases", {basket_id: @basket_id, token: @token})
      MeducationSDK::PaypalPurchases.create(@basket_id, @token)
    end

    def test_new_purchase
      expected_url = URI::encode("/paypal_purchases/new?user[signup_email]=1@redacted.example.com&user[full_name]=Joe Blogs&user[password]=Password&user[password_confirmation]=Password&purchase_option_id=1&return_url=http://localhost/return&cancel_return_url=http://localhost/cancel_return")
      Loquor.expects(:get).with(expected_url).returns("url" => "http://returned.url")
      assert_equal "http://returned.url", MeducationSDK::PaypalPurchases.new_purchase(@user, @purchase_option_id, @return_url, @cancel_return_url)
    end

  end
end