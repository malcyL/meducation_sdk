require 'active_support/all'
require 'loquor'

require "meducation_api/version"
require "meducation_api/configuration"

Dir[File.dirname(__FILE__) + '/meducation_api/resources/*.rb'].each {|file| require file }

module MeducationAPI
  def self.config
    @config ||= Configuration.new
    if block_given?
      yield @config
    else
      @config
    end
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
