require 'rails_helper'

RSpec.feature 'Finish and start a new game', type: :feature do
  scenario 'User aswers 10 questions, finish the game and start a new' do
    visit '/'
    click_link 'Start!'

    10.times do
      choose('answer_option_1').set(true)
      find('input[name="commit"]').click
    end

    click_link 'Play again!'
    expect(page.current_path).to eq root_path

    click_link 'Start!'
    expect(page.current_path).to eq questions_path
  end
end
