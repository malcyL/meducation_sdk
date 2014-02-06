require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class VoteTest < ResourceTest
    test_resource(Vote, '/votes')

    def test_item_calls_sdk
      vote = Vote.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      vote.item
    end

    def test_item_calls_sdk
      vote = Vote.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      vote.item
    end
  end
end


