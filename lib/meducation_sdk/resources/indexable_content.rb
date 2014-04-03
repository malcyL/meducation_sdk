module MeducationSDK
  class IndexableContent < Resource
    self.path = "/indexable_contents"
    self.spi_type = "Item::IndexableContent"
  end

  class IndexableContentMock < IndexableContent
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      content: "The cat sat on the mat",
      item_id: 5, item_type: "MediaFile"
    }
  end
end

