class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def parsed_game_cookies
    JSON.parse(cookies[:game]).symbolize_keys
  end

  def delete_game_cookies
    cookies.delete(:game)
  end
end
