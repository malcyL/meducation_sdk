module MeducationSDK
  class SyllabusItem < Resource
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

