feature "ViewBookmarks" do
  scenario "displays list of bookmarks" do
    visit("/")
    click_on "View Bookmarks"
    expect(page).to have_content "Your bookmarks"
  end
end
