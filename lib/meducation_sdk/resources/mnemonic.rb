module MeducationSDK
  class Mnemonic < Resource
    self.path = "/mnemonics"
  end

  class MnemonicMock < Mnemonic
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      subject: "Some interesting topic",
      mnemonic_string: "SIT",
      parsed_content: "Some information",
      rating: 8
    }
  end
end
