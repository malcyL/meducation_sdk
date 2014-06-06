require_relative '../test_helper'

module MeducationSDK
  class PurchasesTest < Minitest::Test

    def setup
      @user = {
        full_name: "Joe Blogs",
        signup_email: "1@redacted.example.com",
        password: "Password",
        password_confirmation: "Password",
      }

      @purchase_option_id = 1

      @order = {
        first_name: "Joe",
        last_name: "Bloggs",
        card_number: "1234",
        card_verification: "987"
       } 
    end

    def test_create
      Loquor.expects(:post).with("/purchases", {user: @user, purchase_option_id: @purchase_option_id, order: @order})
      MeducationSDK::Purchases.create(@user, @purchase_option_id, @order)
    end

  end
end