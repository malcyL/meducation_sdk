require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class MnemonicTest < ResourceTest
    test_resource(Mnemonic, '/mnemonics')
  end
end
