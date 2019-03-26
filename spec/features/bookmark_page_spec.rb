feature "Bookmarks" do
  scenario "displays bookmarks" do
    visit("/bookmarks")
    expect(page).to have_text("http://www.makersacademy.com")
  end
end