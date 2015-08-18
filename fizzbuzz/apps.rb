require "sinatra"
require "sinatra/reloader" if development?
require "./lib/process.rb"


get "/" do
  erb :index, layout: :application
end

get "/fizzbuzz" do
  erb :fizzbuzz, layout: :application
end

get "/team_picker" do
  erb :team_picker, layout: :application
end

get "/car_info" do
  erb :car_info, layout: :application
end

get "/survey" do
  erb :survey, layout: :application
end

post "/fizzbuzz" do
  @start_number = params[:number1].to_i
  @end_number = params[:number2].to_i
  @arr = fizz_buzz(@start_number, @end_number)
  erb :fizzbuzz, layout: :application
end

post "/team_picker" do

  @num_team = params["team_number"].to_i
  @name = params["members"].split(",").shuffle
  @player_per_team = @name.count / @num_team
  #"Number of teams: #{@num_team}. Players are: #{@name}. Player per team: #{@player_per_team}"
  @picker = TeamPicker.new(@num_team, @name, @player_per_team)
  @arr = @picker.selector

  erb :team_picker, layout: :application

end

post "/car_info" do
  @year = params[:year].to_i

  car = Car.new(@year)
  @results = car.get_info

  erb :car_info, layout: :application
end
