module MeducationSDK
  class UserEmailPreferences < Resource
    self.path = "/user_email_preferences"
  end

  class UserEmailPreferencesMock < UserEmailPreferences
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      badge_issued: true,
      blog_post_published: true,
      board_follow_up_1: true,
      board_follow_up_2: true,
      board_inspiration: true,
      board_new_board_follow_summary: true,
      board_new_board_item: true,
      comments_also_commented: true,
      comments_new_comment: true,
      group_discussions_new_discussion: true,
      group_discussions_new_discussion_post: true,
      groups_invite_accepted: true,
      groups_new_invite: true,
      groups_new_member: true,
      knowledge_bank_questions_new_answer: true,
      media_files_processed: true,
      messages_new_message: true,
      user_follows_created: true,
      users_follow_up: true,
      users_new_user: true,
      users_not_visited: true,
      users_reset_password: true,
      votes_new_vote: true
    }
    
  end
end
