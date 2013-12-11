require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class MeshHeadingTest < ResourceTest
    test_resource(MeshHeading, '/mesh_headings')
  end
end
