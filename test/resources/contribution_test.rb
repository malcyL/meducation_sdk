require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class ContributionTest < ResourceTest
    test_resource(Contribution, '/contributions')

    def test_item_calls_sdk
      contribution = Contribution.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      contribution.item
    end

  end
end


