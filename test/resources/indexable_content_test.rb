require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class IndexableContentTest < ResourceTest
    test_resource(IndexableContent, '/indexable_contents')
  end
end
