require_relative '../../app.rb'

feature 'Attack Player 2' do
  context "if it is player 1's turn" do
    scenario 'player 1 can attack and get confirmation' do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content 'Arthur hit Amy!'
    end
  end
end

feature 'Attack Player 1' do
  context "if it is player 2's turn" do
    scenario 'player 2 can attack and get confirmation' do
      sign_in_and_play
      click_button("Attack")
      click_button("Ouch!")
      click_button("Attack")
      expect(page).to have_content 'Amy hit Arthur!'
    end
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
