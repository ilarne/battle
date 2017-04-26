feature 'Entering names' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'Player1', with: 'CaptainCode'
    fill_in 'Player2', with: 'Graham'
    click_on 'Submit'
    expect(page).to have_content('CaptainCode vs Graham')
  end
end
