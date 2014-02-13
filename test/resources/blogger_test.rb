require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class BloggerTest < ResourceTest
    test_resource(Blogger, '/bloggers')

    def test_user_calls_sdk
      blogger = Blogger.new(user_id: 5)
      MeducationSDK::User.expects(:find).with(5)
      blogger.user
    end
  end
end
