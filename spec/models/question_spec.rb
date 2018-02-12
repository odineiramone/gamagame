require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = Question.random_question
  end

  describe '.random_question' do
    it { expect(@question).to be_instance_of(Question) }
  end

  describe '.options' do
    it { expect(@question.options).to be_instance_of(Array) }
    it { expect(@question.options).not_to be_empty }
  end
end
