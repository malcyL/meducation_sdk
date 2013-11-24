require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationAPI
  class MediaFileTest < ResourceTest
    test_resource(MediaFile, '/media_files')

    def test_user_calls_api
      media_file = MediaFile.new(user_id: 3)
      MeducationAPI::User.expects(:find).with(3)
      media_file.user
    end
  end
end
