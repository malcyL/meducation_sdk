module MeducationSDK
  class Partner < Resource
    self.path = "/partners"
  end

  class PartnerMock < Partner
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Medical Protection Society",
      abbreviated_name: "Medical Protection Society"
    }
  end
end
