module MeducationSDK
  class Mnemonic < Loquor::Resource
    self.path = "/mnemonics"
  end

  class MnemonicMock < Mnemonic
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      subject: "Some interesting topic",
      mnemonic_string: "SIT",
      parsed_content: "Some information",
      rating: 8,
      views_in_last_30_days: 30,
      views_in_last_60_days: 60
    }
  end
end
