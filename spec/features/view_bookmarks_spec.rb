feature "ViewBookmarks" do
  scenario "displays heading" do
    visit("/")
    click_on "View Bookmarks"
    expect(page).to have_content "Your bookmarks"
  end

  scenario "displays list of bookmarks" do
    visit("/")
    click_on "View Bookmarks"
    expect(page).to have_content "www.google.com"
  end
end
