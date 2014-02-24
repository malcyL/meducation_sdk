require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class NotificationTest < ResourceTest
    test_resource(Notification, '/notifications')
  end
end
