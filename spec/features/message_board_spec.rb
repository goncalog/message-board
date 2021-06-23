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