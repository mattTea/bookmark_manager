# As a web user,
# So that I can quickly access my favourite webpages,
# I would like to be able to add web addresses to my 'bookmarks' 

require_relative '../../app.rb'

feature 'Add bookmark' do
  scenario 'a user saves a url to the list' do
    visit ('/bookmarks')
    fill_in 'url', :with => 'http://www.asda.co.uk'
    find_button('add').click
    expect(page).to have_content('http://www.asda.co.uk')
  end
end