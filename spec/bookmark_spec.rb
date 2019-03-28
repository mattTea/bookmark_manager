require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all urls from bookmarks database table" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add test data
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers Academy');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'Destroy All Software');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');")

      bookmarks = Bookmark.all

      expect(bookmarks[0][:title]).to include "Makers Academy"
      expect(bookmarks[1][:title]).to include "Destroy All Software"
      expect(bookmarks[2][:title]).to include "Google"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: "http://www.testbookmark.com", title: "Test Bookmark")
      expect(Bookmark.all[0][:title]).to include "Test Bookmark"
    end
  end 
end
