def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'CaptainCode'
  fill_in 'Player2', with: 'Graham'
  click_on 'Submit'
end
