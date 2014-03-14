require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class ExternalResourceTest < ResourceTest

    test_resource(ExternalResource, '/external_resources')

    def test_created_by_calls_sdk
      er = ExternalResource.new(created_by_id: 3)
      MeducationSDK::User.expects(:find).with(3)
      er.created_by
    end

    def test_responds_to_rating
      er = ExternalResource.new(rating: 5)
      assert er.respond_to?(:rating)
    end
    
    def test_can_retrigger_metadata_load
      Loquor.expects(:post).with('/external_resources/12/reimport_metadata', {})
      ExternalResource.reimport_metadata(12)
    end

  end
end
