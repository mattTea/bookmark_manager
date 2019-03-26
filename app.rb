require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.view_all
    erb :"bookmarks/index"
  end

  run! if app_file == $0

end