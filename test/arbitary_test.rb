require_relative 'test_helper'
module MeducationSDK
  class ArbitaryTest < Minitest::Test
    def test_shit_happens
      skip
      MediaFile.update(8, title: "Foobar to the Malcy Max")
    end
  end
end
