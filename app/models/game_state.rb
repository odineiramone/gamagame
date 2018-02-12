class GameState < ApplicationRecord
  def correct_response
    self.answers = self.answers + 1
    self.hits = self.hits + 1
    self.save!
  end

  def wrong_response
    self.answers = self.answers + 1
    self.save!
  end
end
