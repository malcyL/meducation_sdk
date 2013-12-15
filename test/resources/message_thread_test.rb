require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class MessageThreadTest < ResourceTest
    test_resource(MessageThread, '/message_threads')
  end
end


