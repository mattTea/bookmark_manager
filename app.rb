require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  post "/bookmarks/new" do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect("/bookmarks")
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end

  run! if app_file == $0

end