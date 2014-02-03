require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CollectionSectionTest < ResourceTest
    test_resource(CollectionSection, '/collection_sections')
  end
end

