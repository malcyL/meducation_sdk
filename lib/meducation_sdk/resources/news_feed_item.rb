module MeducationSDK

  class NewsFeedItem < Resource
    self.path = "/news_feed_items"
  end

  class NewsFeedItemMock < NewsFeedItem
    extend Loquor::ResourceMock

    self.attributes = {
      id: 100,
      news_type: "some-news",
      user_name: "Jeremy Walker",
      about_item_id: 8,
      about_item_type: "MediaFile",
      item_title: "The item title",
      image_url: "some_image.jpg",
      icon: "some_icon",
      created_at: "2013-04-20"
    }
  end
end
