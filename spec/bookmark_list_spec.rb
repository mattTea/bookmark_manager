require "bookmark_list"

describe BookmarkList do
  describe "#view_all" do
    it "returns all bookmarks" do
      bookmarks = BookmarkList.view_all
      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.facebook.com")
    end
  end
end