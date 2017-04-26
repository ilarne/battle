feature 'Entering names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs Graham')
  end
end

feature 'Displaying health' do
  scenario 'viewing hit points' do
    sign_in_and_play
    expect(page).to have_content('Graham: 30 HP')
  end
end

feature 'Attacking' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_on 'Attack!'
    expect(page).to have_content ('Graham was attacked!')
  end
end
