require_relative '../../app.rb'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Amy: 50HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Arthur: 50HP'
  end
end

feature 'reduce hit points when attacked' do
  scenario 'attack Player 2 and reduce hit points' do
    sign_in_and_play
    attack_and_return
    expect(page).not_to have_content 'Amy: 50HP'
    expect(page).to have_content 'Amy: 40HP'
  end

  scenario 'attack Player 1 and reduce hit points' do
    sign_in_and_play
    attack_and_return
    attack_and_return
    expect(page).not_to have_content 'Arthur: 50HP'
    expect(page).to have_content 'Arthur: 40HP'
  end
end
