module MeducationSDK
  class Mnemonic < Loquor::Resource
    self.path = "/partners"
  end

  class MnemonicMock < Mnemonic
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      subject: "Some interesting topic",
      mnemonic_string: "SIT"
    }
  end
end
