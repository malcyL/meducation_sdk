module MeducationSDK
  class ExamRoomPracticeExam < Resource
    self.path = "/practice_exams"

    def user
      @user ||= User.find(user_id)
    end
  end

  class ExamRoomPracticeExamMock < ExamRoomPracticeExam
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      created_at: "2014-04-28T12:00:00Z"
    }
  end
end
