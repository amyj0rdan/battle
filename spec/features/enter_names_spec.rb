require_relative '../../app.rb'

feature 'Start a fight and enter names' do
  scenario 'players can submit names and see names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Arthur v Amy'
  end
end
