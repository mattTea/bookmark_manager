# As a user who likes tidy lists,
# so that I can manage my list of favourite websites,
# I want to be able to delete bookmarks I no longer use.

require_relative "../../app.rb"

describe "Delete bookmark" do
  scenario "a user can delete a bookmark from Bookmark Manager" do

    # Add test data
    bookmark = Bookmark.create(url: "http://blog.matttea.com", title: "mattTea Blog")

    visit "/bookmarks"
    expect(page).to have_link("mattTea Blog", href: "http://blog.matttea.com")

    click_on(bookmark.id)
    expect(page).not_to have_link("mattTea Blog", href: "http://blog.matttea.com")
  end
end