require_relative '../../app.rb'

feature 'Player can lose' do
  context "if the user clicks 'attack' and 'ouch' a bunch of times" do
    it 'shows a lose message' do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(10)
      8.times { attack_and_return }
      click_button('Attack')
      expect(page).to have_content("YOU LOSE SUCKER -> Amy")
    end
  end
end
