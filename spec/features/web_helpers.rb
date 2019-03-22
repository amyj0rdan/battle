def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Arthur'
  fill_in :player_2_name, with: 'Amy'
  click_button "Start fight!"
end

def attack_and_return
  click_button('Attack')
  click_button('Ouch!')
end
