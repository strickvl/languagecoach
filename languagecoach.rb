require "sinatra"
require "sinatra/reloader"
require "sinatra/content_for"
require "tilt/erubis"
require 'csv'

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
  task = CSV.read("./public/tasks5mins.csv").shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]
  @title = "Five Minute Task"
  erb :fivemintask, layout: :layout
end

get "/tenmintask" do
  task = CSV.read("./public/tasks10mins.csv").shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]

  @title = "Ten Minute Task"
  erb :tenmintask, layout: :layout
end

get "/twentymintask" do
  task = CSV.read("./public/tasks20mins.csv").shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]

  @title = "Twenty Minute Task"
  erb :twentymintask, layout: :layout
end

get "/thirtymintask" do
  task = CSV.read("./public/tasks30mins.csv").shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]

  @title = "Thirty Minute Task"
  erb :thirtymintask, layout: :layout
end

get "/sixtymintask" do
  task = CSV.read("./public/tasks60mins.csv").shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]

  @title = "Sixty Minute Task"
  erb :sixtymintask, layout: :layout
end
