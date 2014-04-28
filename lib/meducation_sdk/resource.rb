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

RESOURCES = %w{
  author
  badges/answerer_badge
  badges/citizen_badge
  badges/commentator_badge
  badges/community_member_badge
  badges/contributor_badge
  badges/eminent_author_badge
  badges/enlightener_badge
  badges/follower_badge
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
  contribution
  dashboard_item
  ecommerce_product
  ecommerce_subscription
  external_resource
  exam_room_practice_exam
  group
  group_discussion
  group_discussion_post
  group_invite
  group_membership
  indexable_content
  knowledge_bank_question
  knowledge_bank_answer
  media_file
  mesh_heading
  message
  message_thread
  message_thread_contributor
  mnemonic
  news_feed_item
  notification
  partner
  syllabus_item
  user
  user_connection
  user_discount_code
  user_email_data
  user_email_preferences
  user_follow
  user_sent_email
  user_settings
  view
  vote
}

require "meducation_sdk/resources/badges/badge"
RESOURCES.each do |resource|
  require "meducation_sdk/resources/#{resource}"
end
