require 'pg'

class Bookmark
  def self.create(url:, title:)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end

    connection.exec( "INSERT INTO bookmarks (url) VALUES ('#{url}, #{title}')" )

  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end
    
    result = connection.exec( "SELECT * FROM bookmarks;" )
    list = result.map { |bookmark| bookmark['url'] }
    list.join("\n")
  end

end