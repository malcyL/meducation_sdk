require 'active_support/all'
require 'loquor'

require "meducation_sdk/version"
require "meducation_sdk/configuration"
require "meducation_sdk/mocker"

RESOURCES = %w{
  item_comment
  media_file
  notification
  user
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

=begin
  Interactors = {
    "Group::Discussion"     => "/group_discussions",
    "Group::DiscussionPost" => "/group_discussion_posts",
    "Item::Comment"         => "/item_comments",
    "MediaFile"             => "/media_files",
    "MeshHeading"           => "/mesh_headings",
    "Mnemonic"              => "/mnemonics",
    "Premium::Tutorial"     => "/premium_tutorials",
    "Partner"               => "/partners",
    "SyllabusItem"          => "/syllabus_items",
    "User"                  => "/users"
    #
    #ExamRoom::Practice::Exam::Challenge
    #Friendship
    #Ecommerce::Subscription
    #Message.find
    #Group::Membership
    #Group::Invite
    #KnowledgeBank::Answer
    #User::Friendship
  }
=end
