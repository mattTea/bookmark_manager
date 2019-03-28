require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    # p @bookmarks
    # show only the bookmark title here
    # Bookmarks = [
      # {:title=>"Makers Academy", :url=>"http://www.makersacademy.com"},
      # {:title=>"Destroy All Software", :url=>"http://www.destroyallsoftware.com"},
      # {:title=>"Google", :url=>"http://www.google.com"}
    # ]
    erb :"bookmarks/index"
  end

  post "/bookmarks/add" do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect("/bookmarks")
  end

  run! if app_file == $0

end