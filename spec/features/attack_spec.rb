require_relative '../../app.rb'

feature 'Attack Player 2' do
  context "if it is player 1's turn" do
    scenario 'player 1 can attack and get confirmation' do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content 'Arthur hit Amy!'
    end

    scenario 'player 1 can whack player 2 with frying pan' do
      sign_in_and_play
      click_button("Whack with frying pan")
      expect(page).not_to have_content 'Arthur hit Amy!'
      expect(page).to have_content 'Arthur frying-panned Amy!'
    end
  end
end

feature 'Attack Player 1' do
  context "if it is player 2's turn" do
    scenario 'player 2 can attack and get confirmation' do
      sign_in_and_play
      attack_and_return
      click_button("Attack")
      expect(page).to have_content 'Amy hit Arthur!'
    end

    scenario 'player 2 can whack player 1 with frying pan' do
      sign_in_and_play
      attack_and_return
      click_button("Whack with frying pan")
      expect(page).not_to have_content 'Amy hit Arthur!'
      expect(page).to have_content 'Amy frying-panned Arthur!'
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
