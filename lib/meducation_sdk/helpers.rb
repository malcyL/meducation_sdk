module MeducationSDK
  module Helpers
    SDK_TO_SPI_MAPPINGS = {}

    def sdk_class_for(spi_type)
      sdk_type_for(spi_type).constantize
    end

    def sdk_type_for(spi_type)
      if SDK_TO_SPI_MAPPINGS.has_value?(spi_type)
        SDK_TO_SPI_MAPPINGS.key(spi_type)
      else
        "MeducationSDK::#{spi_type.gsub("::", "")}"
      end
    end

    def spi_type_for(sdk_type)
      if SDK_TO_SPI_MAPPINGS.has_key?(sdk_type)
        SDK_TO_SPI_MAPPINGS[sdk_type]
      else
        sdk_type.gsub("MeducationSDK::", "")
      end
    end
  end
end

