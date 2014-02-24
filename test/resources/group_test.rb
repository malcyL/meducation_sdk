require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class GroupTest < ResourceTest
    test_resource(Group, '/groups')
  end
end

