require "sinatra"
require "sinatra/reloader"
require "sinatra/content_for"
require "tilt/erubis"

configure do
  set :erb, :escape_html => true
end

get "/" do
  @title = "Home"
  erb :front_page, layout: :layout
end

get "/coachbot" do
  erb :coachbot, layout: :layout
end

get "/masterarabic" do
  erb :masterarabic, layout: :layout
end

get "/coaching" do
  erb :coaching, layout: :layout
end

get "/podcast" do
  erb :podcast, layout: :layout
end

get "about" do
  erb :about, layout: :layout
end
