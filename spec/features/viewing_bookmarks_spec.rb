require 'pg'

feature "Viewing bookmarks" do
  scenario "user can see list of bookmarks" do

    # Add test data
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit("/bookmarks")

    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Destroy All Software"
    expect(page).to have_content "Google"
  end

  scenario "user sees only the title of saved bookmarks" do
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    visit("/bookmarks")
    expect(page).not_to have_content "http://www.makersacademy.com"
  end
end