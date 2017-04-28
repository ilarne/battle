feature 'Entering names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs Graham')
  end
end

# feature 'Displaying health' do
#   scenario 'viewing hit points' do
#     sign_in_and_play
#     click_on 'Attack!'
#     visit '/wrecked'
#     expect(page).to have_content('Graham: 30 HP')
#   end
# end

feature 'Attacking' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_on 'Attack!'
    expect(page).to have_content('Graham was attacked!')
  end

  scenario 'reduces HP by 10' do
    sign_in_and_play
    srand(325)
    click_on 'Attack!'
    expect(page).to have_content('Graham: 90 HP')
  end

  feature 'Healing' do
    scenario 'increases HP by ' do
      sign_in_and_play
      srand(325)
      click_on 'Attack!'
      click_on 'Switch turns'
      click_on 'Heal!'
      expect(page).to have_content('Graham: 100 HP')
    end
  end

  feature 'Sleep' do
    scenario 'puts player to sleep' do
      sign_in_and_play
      click_on 'Sleep!'
      visit '/sleep'
      expect(page).to have_content('Graham was attacked! He was put to sleep!')
  end
end

  feature 'Switching turns' do
    scenario 'switch to other player' do
      sign_in_and_play
      click_on 'Attack!'
      expect(page).to have_button('Switch turns')
    end
  end

  feature 'Ending the game' do
    scenario 'end the game when a player dies' do
      sign_in_and_play
      fight_battle
      click_button "Attack!"
      expect(page).to have_content('CaptainCode died!')
    end
  end
end
