module MeducationAPI
  class ItemComment < Loquor::Resource
    self.path = "/item_comments"

    def item
      @item ||= "MeducationAPI::#{item_type}".constantize.find(item_id)
    end
  end
end

