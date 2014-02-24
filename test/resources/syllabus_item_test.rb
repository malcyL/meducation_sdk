require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class SyllabusItemTest < ResourceTest
    test_resource(SyllabusItem, '/syllabus_items')
  end
end

