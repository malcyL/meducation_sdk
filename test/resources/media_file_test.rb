require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class MediaFileTest < ResourceTest
    test_resource(MediaFile, '/media_files')

    def test_comments_calls_sdk
      media_file = MediaFile.new(id: 5)
      MeducationSDK::Comment.expects(:where).with(item_id: media_file.id, item_type: "MediaFile")
      media_file.comments
    end

    def test_user_calls_sdk
      media_file = MediaFile.new(user_id: 3)
      MeducationSDK::User.expects(:find).with(3)
      media_file.user
    end

    def test_mdia_file_responds_to_rating
      media_file = MediaFile.new(rating: 5)
      assert media_file.respond_to?(:rating)
    end

    def test_uploaded_state_is_correct
      assert_equal 1, MeducationSDK::MediaFile::State.uploaded
    end

    def test_processing_state_is_correct
      assert_equal 2, MeducationSDK::MediaFile::State.processing
    end

    def test_available_state_is_correct
      assert_equal 3, MeducationSDK::MediaFile::State.available
    end

    def test_redacted_state_is_correct
      assert_equal 4, MeducationSDK::MediaFile::State.redacted
    end
  end
end
