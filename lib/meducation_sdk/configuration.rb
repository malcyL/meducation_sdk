module MeducationSDK
  class MeducationSDKError < StandardError
  end
  class MeducationSDKConfigurationError < MeducationSDKError
  end

  class Configuration

    SETTINGS = [ 
      :logger, 
      :recommender_host, :recommender_port 
    ]

    attr_writer *SETTINGS

    def initialize
      self.logger = Filum.logger

      Loquor.config do |config|
        config.endpoint = "http://www.meducation.net/system"
        config.substitute_values[true]  = ":__true__"
        config.substitute_values[false] = ":__false__"
        config.retry_404s = true
      end

      self.recommender_host = "recommender.meducation.net"
      self.recommender_port = 4567
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
