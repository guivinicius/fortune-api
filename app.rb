require 'sinatra'
require 'json'
require_relative "lib/fortune"

get '/' do

end

get '/fortune.?:format?' do

  fortune = Fortune.new(params[:long], params[:dirty]).text

  if params[:format].eql?("json")
    content_type :json
    { :text => fortune }.to_json
  else
    content_type :text
    fortune
  end

end
