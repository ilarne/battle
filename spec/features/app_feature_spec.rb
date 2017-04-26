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
