require "bookmark"
require "database_helpers"

describe Bookmark do
  describe ".all" do
    it "returns all urls from bookmarks database table" do

      # Add test data
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq "Makers Academy"
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      bookmark = Bookmark.create(url: "http://www.testbookmark.com", title: "Test Bookmark")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data["id"]
      expect(bookmark.title).to eq "Test Bookmark"
      expect(bookmark.url).to eq "http://www.testbookmark.com"
    end
  end

  describe ".delete" do
    it "deletes a bookmark" do
      bookmark = Bookmark.create(url: "http://www.testbookmark-delete.com", title: "Test Bookmark Delete")
      
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end

  describe ".find_by_id" do
    it "finds a specific bookmark" do
      bookmark = Bookmark.create(url: "http://www.testbookmark-delete.com", title: "Test Bookmark Delete")
      
      expect(Bookmark.find_by_id(id: bookmark.id)).to be_a Bookmark
    end
  end

  describe ".update" do
    it "updates a bookmark" do
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.update(id: bookmark.id, url: bookmark.url, title: "Updated Makers Academy")
      
      expect(Bookmark.find_by_id(id: bookmark.id).title).to eq "Updated Makers Academy"
    end
  end
end
