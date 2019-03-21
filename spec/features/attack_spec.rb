require_relative '../../app.rb'

feature 'Attack Player 2' do
  scenario 'player can attack and get confirmation' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'Arthur hit Amy!'
  end
end

# feature 'attack player 1' do
#   scenario 'player 2 can attack player 1 after being attacked' do
#     sign_in_and_play
#     click_button("Attack")
#     click_button("Ouch!")
#     click_button("Attack")
#     expect(page).to have_content 'Amy hit Arthur!'
#   end
# end
