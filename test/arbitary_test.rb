require File.expand_path('../test_helper', __FILE__)
module MeducationSDK
  class ArbitaryTest < Minitest::Test
    def test_shit_happens
      skip
      MediaFile.update(8, title: "Foobar to the Malcy Max")
    end
  end
end
