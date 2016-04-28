feature 'taking turns to attack' do
  scenario 'player 2 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content ('Mittens attacked Dave')
  end

  scenario 'attack reduces opponents HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content ('Dave: 50HP')
  end

end
