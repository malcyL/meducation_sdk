require 'active_support/all'
require 'loquor'

require 'meducation_sdk/version'
require 'meducation_sdk/configuration'
require 'meducation_sdk/mocker'

require 'meducation_sdk/helpers'
require 'meducation_sdk/services/paypal_purchases'
require 'meducation_sdk/services/purchases'
require 'meducation_sdk/services/recommender'
require 'meducation_sdk/resource'
require 'meducation_sdk/email_shortcodes'

module MeducationSDK
  def self.config
    @config ||= Configuration.new
    if block_given?
      yield @config
    else
      @config
    end
  end

  def self.mock!
    MeducationSDK::Mocker.mock!
  end
end
