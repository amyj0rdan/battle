require_relative '../../app.rb'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Amy: 50HP'
  end
end

feature 'reduce hit points when attacked' do
  scenario 'attack Player 2 and reduce hit points' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ouch!')
    expect(page).not_to have_content 'Amy: 50HP'
    expect(page).to have_content 'Amy: 40HP'
  end
end
