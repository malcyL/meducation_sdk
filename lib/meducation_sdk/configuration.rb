module MeducationSDK
  class MeducationSDKError < StandardError
  end
  class MeducationSDKConfigurationError < MeducationSDKError
  end

  class Configuration

    SETTINGS = [ :logger ]

    attr_writer *SETTINGS

    def initialize
      Filum.config.logfile = "./log/loquor.log"
      Loquor.config.endpoint = "http://www.meducation.net/system"
      self.logger = Filum.logger
    end

    [:access_id, :secret_key, :endpoint, :cache].each do |setting|
      define_method "#{setting}=" do |val|
        Loquor.config.send("#{setting}=", val)
      end
    end

    def logger=(val)
      @logger = val
      Loquor.config.logger = val
    end

    SETTINGS.each do |setting|
      define_method setting do
        get_or_raise(setting)
      end
    end

    private

    def get_or_raise(setting)
      instance_variable_get("@#{setting.to_s}") ||
        raise(MeducationSDKConfigurationError.new("Configuration for #{setting} is not set"))
    end
  end
end
