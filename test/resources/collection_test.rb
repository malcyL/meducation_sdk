require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CollectionTest < ResourceTest
    test_resource(Collection, '/collections')
  end
end

