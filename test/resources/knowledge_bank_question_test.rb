require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class KnowledgeBankAnswerTest < ResourceTest
    test_resource(KnowledgeBankQuestion, '/knowledge_bank_questions')
  end
end

