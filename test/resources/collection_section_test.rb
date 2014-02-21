require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class CollectionSectionTest < ResourceTest
    test_resource(CollectionSection, '/collection_sections')
  end
end

