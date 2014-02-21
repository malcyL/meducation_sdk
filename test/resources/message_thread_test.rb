require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class MessageThreadTest < ResourceTest
    test_resource(MessageThread, '/message_threads')
  end
end


