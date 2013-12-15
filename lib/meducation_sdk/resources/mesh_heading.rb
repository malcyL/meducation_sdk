module MeducationSDK
  class MeshHeading < Loquor::Resource
    self.path = "/mesh_headings"

    def parents
      parent_ids.map { |p_id| MeshHeading.find(p_id) }
    end

    def parent_ids
      @data[:parents].map { |p| p['id'] }
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

