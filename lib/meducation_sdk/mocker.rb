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
      return if mock_module.const_defined?(original_class_name)

      resource = "#{mock_module_name}::#{resource_class_name}".constantize
      mock = "#{mock_module_name}::#{mock_class_name}".constantize

      mock_module.const_set(original_class_name, resource)
      mock_module.send(:remove_const, resource_class_name)
      mock_module.const_set(resource_class_name, mock)
      mock_module.send(:remove_const, mock_class_name)
    end

    def unmock!
      return unless mock_module.const_defined?(original_class_name)

      original = "#{mock_module_name}::#{original_class_name}".constantize
      resource = "#{mock_module_name}::#{resource_class_name}".constantize

      mock_module.const_set(mock_class_name, resource)
      mock_module.send(:remove_const, resource_class_name)
      mock_module.const_set(resource_class_name, original)
      mock_module.send(:remove_const, original_class_name)
    end

    private
    def resource_class_name
      @resource_class_name ||= @resource_name.camelize.split("::").last
    end

    def mock_class_name
       @mock_class_name ||= "#{@resource_name}_mock".camelize.split("::").last
    end

    def original_class_name
      @original_class_name ||= "#{@resource_name}_original".camelize.split("::").last
    end

    def mock_module
      @mock_module ||= mock_module_name.constantize
    end

    def mock_module_name
      @mock_module_name ||= begin
        parts = @resource_name.camelize.split("::")
        if parts.size == 1
          "MeducationSDK"
        else
          parts.pop
          "MeducationSDK::#{parts.join("::")}"
        end
      end
    end
  end
end
