require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all urls from bookmarks database table" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
      expect(Bookmark.all).to include 'Test Bookmark'
    end
  end 
end
