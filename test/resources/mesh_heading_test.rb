require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class MeshHeadingTest < ResourceTest
    test_resource(MeshHeading, '/mesh_headings')
  end
end
