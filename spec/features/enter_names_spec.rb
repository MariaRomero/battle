feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
feature 'Hit points' do
  scenario 'view other players hit points' do
    visit('/')
        fill_in :player_1_name, with: 'Dave'
        fill_in :player_2_name, with: 'Mittens'
        click_button 'Submit'
        expect(page).to have_content ('Mittens: 60HP')
    end
  end
