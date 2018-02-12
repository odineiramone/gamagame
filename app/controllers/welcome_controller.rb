class WelcomeController < ApplicationController
  def index
    new_game = {
      value: { user_identifier: SecureRandom.hex(7), answers: 0, hits: 0 }.to_json
    }

    cookies[:game] ||=  new_game
  end
end
