require_relative '../../app.rb'

feature 'Attack Player 2' do
  scenario 'player can attack and get confirmation' do
    sign_in_and_play
    click_button("Attack Player 2")
    expect(page).to have_content 'Arthur hit Amy!'
  end
end
