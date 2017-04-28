def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'CaptainCode'
  fill_in 'Player2', with: 'Graham'
  click_on 'Submit'
end

def fight_battle
  srand(124)
  11.times do
  click_on 'Attack!'
  click_on 'Switch turns'
 end
end
