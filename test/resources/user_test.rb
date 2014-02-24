require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserTest < ResourceTest
    test_resource(User, '/users')
  end
end


