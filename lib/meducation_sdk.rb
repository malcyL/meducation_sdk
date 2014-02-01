require 'active_support/all'
require 'loquor'

require "meducation_sdk/version"
require "meducation_sdk/configuration"
require "meducation_sdk/mocker"

RESOURCES = %w{
  collection_topic
  comment
  community
  community_membership
  ecommerce_subscription
  friendship
  group
  group_discussion
  group_discussion_post
  group_invite
  group_membership
  knowledge_bank_question
  knowledge_bank_answer
  media_file
  mesh_heading
  message
  message_thread
  message_thread_contributor
  mnemonic
  notification
  partner
  syllabus_item
  user
  user_settings
}
RESOURCES.each do |resource|
  require "meducation_sdk/resources/#{resource}"
end

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
