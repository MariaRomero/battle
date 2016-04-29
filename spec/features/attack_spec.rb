feature 'Attack:' do
  scenario 'attack player and receive confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content ('Dave attacked Mittens')
  end

  scenario 'attack reduces opponents HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content ('Mittens: 50HP')
  end

  scenario 'player 2 can attack' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content ('Dave: 50HP')
  end

  scenario 'player 2 looses and gets confirmation' do
    sign_in_and_play
    11.times { click_button 'Attack' }
    expect(page).to have_content ('Game Over!')
  end
end
