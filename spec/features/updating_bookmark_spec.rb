# As a user,
# so that I can keep my bookmarks accurate and up-to-date,
# I want to be able to update bookmark details.

require_relative "../../app.rb"

describe "Update bookmark" do
  scenario "a user can update a bookmark in Bookmark Manager" do
    # Add test data
    bookmark = Bookmark.create(url: "http://blog.matttea.com", title: "mattTea Blog")
    
    visit "/bookmarks"
    expect(page).to have_link("mattTea Blog", href: "http://blog.matttea.com")

    click_on("update-#{bookmark.id}")
    expect(current_path).to eq "/bookmarks/#{bookmark.id}"
  end
end