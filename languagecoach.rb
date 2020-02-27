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
  @title = "CoachBot"
  erb :coachbot, layout: :layout
end

get "/masterarabic" do
  @title = "Master Arabic"
  erb :masterarabic, layout: :layout
end

get "/coaching" do
  @title = "Coaching"
  erb :coaching, layout: :layout
end

get "/podcast" do
  @title = "Podcast"
  erb :podcast, layout: :layout
end

get "/about" do
  @title = "About"
  erb :about, layout: :layout
end
