module MeducationSDK
  class Contribution < Resource
    self.path = "/contributions"
    self.spi_type = "Item::Contribution"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

  end

  class ContributionMock < Contribution
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      item_id: 5,
      item_type: "MediaFile"
    }
  end
end

