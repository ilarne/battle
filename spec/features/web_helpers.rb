def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'CaptainCode'
  fill_in 'Player2', with: 'Graham'
  click_on 'Submit'
end

def fight_battle
  click_on 'Attack!'
  visit '/wrecked'
  click_on 'Switch turns'
  visit '/play'
  click_on 'Attack!'
  visit '/wrecked'
  click_on 'Switch turns'
  visit '/play'
  click_on 'Attack!'
  visit '/wrecked'
end
