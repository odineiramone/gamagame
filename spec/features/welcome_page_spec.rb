require 'rails_helper'

RSpec.feature 'Welcome page', type: :feature do
  scenario 'User access site' do
    visit '/'

    expect(page).to have_text('Come to play with us!')
    expect(page).to have_text("Have you ever played Gama Game? It's a game of general knowledge questions and answers. It used to be played at #gamagame, an IRC (Internet Relay Chat) channel in the Brasnet network, which no longer exists")
    expect(page).to have_css('a', class: 'button', text: 'Start!')
  end
end
