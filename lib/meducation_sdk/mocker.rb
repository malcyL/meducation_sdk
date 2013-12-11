module MeducationSDK
  class Mocker
    def self.mock!
      RESOURCES.each do |resource|
        new(resource).mock!
      end
    end

    def self.unmock!
      RESOURCES.each do |resource|
        new(resource).unmock!
      end
    end

    def initialize(resource_name)
      @resource_name = resource_name
    end

    def mock!
      return if MeducationSDK.const_defined?(original_klass)

      resource = "MeducationSDK::#{resource_klass}".constantize
      mock = "MeducationSDK::#{mock_klass}".constantize

      MeducationSDK.const_set(original_klass, resource)
      MeducationSDK.send(:remove_const, resource_klass)
      MeducationSDK.const_set(resource_klass, mock)
      MeducationSDK.send(:remove_const, mock_klass)
    end

    def unmock!
      return unless MeducationSDK.const_defined?(original_klass)

      original = "MeducationSDK::#{original_klass}".constantize
      resource = "MeducationSDK::#{resource_klass}".constantize

      MeducationSDK.const_set(mock_klass, resource)
      MeducationSDK.send(:remove_const, resource_klass)
      MeducationSDK.const_set(resource_klass, original)
      MeducationSDK.send(:remove_const, original_klass)
    end

    private
    def resource_klass
      @resource_name.camelize
    end

    def mock_klass
       "#{@resource_name}_mock".camelize
    end

    def original_klass
      "#{@resource_name}_original".camelize
    end
  end
end
