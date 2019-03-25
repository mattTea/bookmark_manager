require_relative '../../app.rb'

feature 'Homepage' do
  scenario 'user welcomed to the app' do
    visit ('/')
    expect(page).to have_content "Welcome to Bookmark Manager!"
  end
end