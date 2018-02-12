require 'rails_helper'

RSpec.feature 'Start a new game', type: :feature do
  scenario 'User starts a new  game' do
    visit '/'
    click_link 'Start!'

    expect(page.current_path).to eq questions_path
    expect(page).to have_css('input', class: 'send_answer disabled')
    expect(page).to have_css('div', class: 'question')
    expect(page).to have_css('ul')
  end
end
