require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class CollectionTest < ResourceTest
    test_resource(Collection, '/collections')
  end
end

