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

get "/howmuchtime" do
  @title = "Coachbot - How much time do you have?"
  erb :howmuchtime, layout: :layout
end

get "/fivemintask" do
  @title = "Five Minute Task"
  erb :fivemintask, layout: :layout
end

get "/tenmintask" do
  @title = "Ten Minute Task"
  erb :tenmintask, layout: :layout
end

get "/twentymintask" do
  @title = "Twenty Minute Task"
  erb :twentymintask, layout: :layout
end

get "/thirtymintask" do
  @title = "Thirty Minute Task"
  erb :thirtymintask, layout: :layout
end

get "/sixtymintask" do
  @title = "Sixty Minute Task"
  erb :sixtymintask, layout: :layout
end
