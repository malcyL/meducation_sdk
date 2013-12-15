require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CommunityTest < ResourceTest
    test_resource(Community, '/communities')
  end
end

