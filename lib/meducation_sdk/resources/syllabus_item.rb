module MeducationSDK
  class SyllabusItem < Loquor::Resource
    self.path = "/syllabus_items"
  end

  class SyllabusItemMock < SyllabusItem
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Medicine",
    }
  end
end

