feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce Player 2 HP by 10' do
     sign_in_and_play
     attack_and_confirm
     expect(page).not_to have_content 'Mittens: 60HP'
  end


  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'reduce Player 1 HP by 10' do
   sign_in_and_play
   2.times { attack_and_confirm }
   expect(page).not_to have_content 'Dave: 60HP'
  end
end
