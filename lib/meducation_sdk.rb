require 'active_support/all'
require 'loquor'

require "meducation_sdk/version"
require "meducation_sdk/configuration"
require "meducation_sdk/mocker"

require "meducation_sdk/resource"
require "meducation_sdk/resources/badges/badge"

RESOURCES = %w{
  badges/answerer_badge
  badges/befriender_badge
  badges/citizen_badge
  badges/commentator_badge
  badges/community_member_badge
  badges/contributor_badge
  badges/eminent_author_badge
  badges/enlightener_badge
  badges/inquisitive_mind_badge
  badges/photogenic_badge
  badges/questioner_badge
  badges/respected_author_badge
  blog_post
  blogger
  board
  board_follow
  board_item
  collection
  collection_section
  collection_topic
  comment
  community
  community_membership
  dashboard_item
  ecommerce_subscription
  external_resource
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
  user_email_data
  user_settings
  vote
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
