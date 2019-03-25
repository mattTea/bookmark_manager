require 'sinatra/base'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/bookmarks" do
    @bookmarks = BookmarkList.view_all
    erb :bookmarks
  end

  run! if app_file == $0

end