require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class MessageTest < ResourceTest
    test_resource(Message, '/messages')
  end
end

