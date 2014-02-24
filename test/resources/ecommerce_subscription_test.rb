require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class EcommerceSubscriptionTest < ResourceTest
    test_resource(EcommerceSubscription, '/ecommerce_subscriptions')
  end
end

