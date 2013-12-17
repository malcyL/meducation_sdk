require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class PremiumTutorialTest < ResourceTest
    test_resource(PremiumTutorial, '/premium_tutorials')

    def test_user_calls_sdk
      tutorial = PremiumTutorial.new(id: 2, user_id: 5)
      MeducationSDK::User.expects(:find).with(5)
      tutorial.user
    end
  end
end

