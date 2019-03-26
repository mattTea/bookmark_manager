require_relative '../../app.rb'

feature 'Homepage' do
  scenario 'welcomes user to the app' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

