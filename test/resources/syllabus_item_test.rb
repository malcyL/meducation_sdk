require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class SyllabusItemTest < ResourceTest
    test_resource(SyllabusItem, '/syllabus_items')
  end
end

