require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class UserEmailDataTest < ResourceTest
    test_resource(UserEmailData, '/user_email_data')
  end

  class UserEmailDataMock < UserEmailData
    extend Loquor::ResourceMock
  end
end

