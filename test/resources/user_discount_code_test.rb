require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserDiscountCodeTest < ResourceTest
    test_resource(UserDiscountCode, '/user_discount_codes')

    def test_user_calls_sdk
      discount_code = UserDiscountCode.new(user_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      discount_code.user
    end

  end
end
