require_relative '../../app.rb'

feature 'Homepage' do
  scenario 'welcomes user to the app' do
    visit ('/')
    expect(page).to have_content "Welcome to Bookmark Manager!"
  end

  scenario 'has a button to view bookmarks' do
    visit ('/')
    expect(page).to have_selector 'button'
  end
end

