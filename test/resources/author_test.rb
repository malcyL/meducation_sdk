require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class AuthorTest < ResourceTest
    test_resource(Author, '/authors')

    def test_user_calls_sdk
      author = Author.new(user_id: 20)
      MeducationSDK::User.expects(:find).with(20)
      author.user
    end
  end
end

