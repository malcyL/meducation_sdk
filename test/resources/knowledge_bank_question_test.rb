require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class KnowledgeBankAnswerTest < ResourceTest
    test_resource(KnowledgeBankQuestion, '/knowledge_bank_questions')
  end
end

