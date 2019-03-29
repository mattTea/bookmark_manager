# As a user,
# so that I can keep my bookmarks accurate and up-to-date,
# I want to be able to update bookmark details.

require_relative "../../app.rb"

describe "Updating bookmarks" do
  scenario "a user can access a page to update a specific bookmark" do
    # Add test data
    bookmark = Bookmark.create(url: "http://blog.matttea.com", title: "mattTea Blog")
    
    visit "/bookmarks"
    expect(page).to have_link("mattTea Blog", href: "http://blog.matttea.com")

    click_on("update-#{bookmark.id}")
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"
  end

  scenario "a user can access a form to update specific bookmark" do
    # Add test data
    bookmark = Bookmark.create(url: "http://blog.matttea.com", title: "mattTea Blog")
    
    visit "/bookmarks"
    expect(page).to have_link("mattTea Blog", href: "http://blog.matttea.com")

    click_on("update-#{bookmark.id}")
    expect(page).to have_selector "form"
  end

  scenario "a user can update a bookmark" do
    # Add test data
    bookmark = Bookmark.create(url: "http://blog.matttea.com", title: "mattTea Blog")
    
    visit "/bookmarks"
    expect(page).to have_link("mattTea Blog", href: "http://blog.matttea.com")

    click_on("update-#{bookmark.id}")
    fill_in "title", :with => "Updated mattTea Blog"
    click_button("Update")
    expect(page).to have_link("Updated mattTea Blog", href: "http://blog.matttea.com")
  end
end