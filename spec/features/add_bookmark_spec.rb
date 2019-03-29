# As a web user,
# So that I can quickly access my favourite webpages,
# I would like to be able to add web addresses to my "bookmarks" 

require_relative "../../app.rb"

feature "Add bookmark" do
  scenario "a user can add a bookmark to Bookmark Manager" do
    visit ("/bookmarks/new")
    fill_in "url", :with => "http://www.asda.co.uk"
    fill_in "title", :with => "Asda"
    click_button("add")
    expect(page).to have_link("Asda", href: "http://www.asda.co.uk")
  end
end