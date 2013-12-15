require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class PartnerTest < ResourceTest
    test_resource(Partner, '/partners')
  end
end

