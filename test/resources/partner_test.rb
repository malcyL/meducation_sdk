require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class PartnerTest < ResourceTest
    test_resource(Partner, '/partners')
  end
end

