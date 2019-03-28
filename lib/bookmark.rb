require 'pg'

class Bookmark
  def self.create(url:, title:)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end

    sql = "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')"
    connection.exec(sql)
  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end
    
    result = connection.exec( "SELECT * FROM bookmarks;" )
    list = result.map do |bookmark|
      {title: bookmark['title'], url: bookmark['url']}
    end
    # p list
    # list.join("\n")

    # You may want to update the Bookmark.all method to return instances of the Bookmark class instead of strings.
    # The instance should wrap and expose the attributes id, title and url.
  end
end