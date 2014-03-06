module MeducationSDK
  class Resource < Loquor::Resource
    include Helpers

    def self.spi_type=(type)
      Helpers::SDK_TO_SPI_MAPPINGS[self.name] = type
    end

    def created_at
      DateTime.parse(@data[:created_at])
    end

    def updated_at
      DateTime.parse(@data[:updated_at])
    end
  end
end
