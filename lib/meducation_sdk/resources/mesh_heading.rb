module MeducationSDK
  class MeshHeading < Loquor::Resource
    self.path = "/mesh_headings"

    def parents
      MeshHeading.where(id: parent_ids)
    end
  end

  class MeshHeadingMock < MeshHeading
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Some Mesh Heading",
      parent_ids: [2,3,4]
    }
  end
end

