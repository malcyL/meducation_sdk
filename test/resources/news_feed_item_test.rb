require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class NewsFeedItemTest < ResourceTest
    test_resource(NewsFeedItem, '/news_feed_items')
  end
end
