class Question < ApplicationRecord
  def self.random_question
    order('RANDOM()').first
  end

  def options
    [
      option1,
      option2,
      option3,
      option4
    ]
  end
end
