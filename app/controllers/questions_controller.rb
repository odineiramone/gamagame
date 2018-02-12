class QuestionsController < ApplicationController
  def index
    gs = current_game
    redirect_to score_questions_path if gs.answers >= 10
    @question = Question.random_question
  end

  def score
    @gs = current_game
    delete_game_cookies
  end

  def answer
    gs = current_game
    correct_response? ? gs.correct_response : gs.wrong_response
    redirect_to questions_path
  end

  private

  def current_game
    gs = GameState.find_by(user_identifier: parsed_game_cookies[:user_identifier])
    gs = GameState.create!(parsed_game_cookies) unless gs
    gs
  end

  def answer_params
    params.require(:answer)
          .permit(:option, :correct)
  end

  def correct_response?
    answer_params[:option] == answer_params[:correct]
  end
end
