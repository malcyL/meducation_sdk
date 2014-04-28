require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class ExamRoomPracticeExamTest < ResourceTest
    test_resource(ExamRoomPracticeExam, '/practice_exams')

    def test_user_calls_sdk
      exam = ExamRoomPracticeExam.new(user_id: 5)
      MeducationSDK::User.expects(:find).with(5)
      exam.user
    end
  end
end
