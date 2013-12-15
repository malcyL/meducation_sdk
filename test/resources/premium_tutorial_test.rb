require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class PremiumTutorialTest < ResourceTest
    test_resource(PremiumTutorial, '/premium_tutorials')
  end
end

