feature 'users can go to main page' do
  scenario 'and see a welcoming title' do
    visit '/'
    expect(page).to have_content 'Welcome to The Message Board'
  end
end 