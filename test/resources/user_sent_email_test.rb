require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserSentEmailTest < ResourceTest
    test_resource(UserSentEmail, '/user_sent_emails')
  end
end
