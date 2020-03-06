require "sinatra"
require "sinatra/reloader" if development?
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
  @task_length = '5'
  @title = "Five Minute Task"

  show_task
end

get "/tenmintask" do
  @task_length = '10'
  @title = "Ten Minute Task"

  show_task
end

get "/twentymintask" do
  @task_length = '20'
  @title = "Twenty Minute Task"

  show_task
end

get "/thirtymintask" do
  @task_length = '30'
  @title = "Thirty Minute Task"

  show_task
end

get "/sixtymintask" do
  @task_length = '60'
  @title = "Sixty Minute Task"

  show_task
end

def show_task
  filename = "./public/tasks" + @task_length + "mins.csv"
  task = CSV.read(filename).shuffle.first
  @task_name = task[0]
  @task_extra_information = task[1]

  @refresh_task_path = %w(fivemintask tenmintask twentymintask
                        thirtymintask sixtymintask).shuffle.first

  erb :task, layout: :layout
end
