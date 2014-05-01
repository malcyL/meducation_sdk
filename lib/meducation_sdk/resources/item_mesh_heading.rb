module MeducationSDK

  class ItemMeshHeading < Resource

    self.path = "/item_mesh_headings"
    self.spi_type = "Item::MeshHeading"

  end

  class ItemMeshHeadingMock < ItemMeshHeading

    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      mesh_root: 'A',
      mesh_heading: 'D000025',
      created_by: 'test',
      item_id: 28, item_type: 'FooType'
    }
  end

end

