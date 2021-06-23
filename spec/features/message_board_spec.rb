feature 'users can go to main page' do
  scenario 'and see a welcoming title' do
    visit '/'
    expect(page).to have_content 'Welcome to The Message Board'
  end

  scenario 'and see a link to see all messages' do
    visit '/'
    expect(page).to have_link 'See All Messages'
  end

  scenario 'and see a link to add a message' do
    visit '/'
    expect(page).to have_link 'Add Message'
  end
end

feature ' users can go to messages page' do
  scenario 'and see all messages' do
    visit '/messages'
    expect(page).to have_content 'A message by Aurelius at 2021-06-23'
    expect(page).to have_content 'A poem by Arthur at 2021-06-22'
    expect(page).to have_content 'A song by Sinatra at 2021-06-21'
  end
end

feature ' users can go to add-message page' do
  scenario 'and see form to add new message' do
    visit '/add-message'
    expect(page).to have_button 'Add Message'
  end

  scenario 'and add new message' do
    visit '/add-message'
    fill_in :name, with: 'Socrates'
    fill_in :message, with: 'A book'
    click_button 'Add Message'
    today = Time.now
    date = today.strftime("%Y-%m-%d")
    expect(page).to have_content "A book by Socrates at #{date}"
  end
end