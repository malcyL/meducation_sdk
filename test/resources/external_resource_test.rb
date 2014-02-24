require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class ExternalResourceTest < ResourceTest

    test_resource(ExternalResource, '/external_resources')

    def test_created_by_calls_sdk
      media_file = ExternalResource.new(created_by_id: 3)
      MeducationSDK::User.expects(:find).with(3)
      media_file.created_by
    end

    def test_responds_to_rating
      media_file = ExternalResource.new(rating: 5)
      assert media_file.respond_to?(:rating)
    end

  end
end
