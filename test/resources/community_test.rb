require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class CommunityTest < ResourceTest
    test_resource(Community, '/communities')
  end
end

