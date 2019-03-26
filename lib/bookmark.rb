require 'pg'

class Bookmark
  def self.all
    # ["www.google.com", "www.facebook.com"]

    conn = PG.connect( dbname: 'bookmark_manager' )
    result = conn.exec( "SELECT * FROM bookmarks" )
    # return result.getvalue(0,1)
    bookmarks_list = result.values

    list = []
    bookmarks_list.each do |id, url|
      list << url
    end
    list.join("\n")
  end
end