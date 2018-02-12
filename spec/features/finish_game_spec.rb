require 'rails_helper'
require 'pry'

RSpec.feature 'Finish game', type: :feature do
  scenario 'User aswers 10 questions and finish the game' do
    visit '/'
    click_link 'Start!'

    10.times do
      choose('answer_option_1').set(true)
      find('input[name="commit"]').click
    end

    expect(page.current_path).to eq score_questions_path
    expect(page).to have_text('Congratulations! You completed the game!')
    expect(page).to have_text(/Your score was \d\/\d/)
    expect(page).to have_css('a', class: 'button', text: 'Play again!')
  end
end
