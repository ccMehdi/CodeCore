require "sinatra"
require "faker"

# this allows using the sessions feature in Sinatra
enable :sessions

require "sinatra/reloader" if development?

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and
    @auth.credentials == ['admin', 'admin']
  end
end

get "/" do
  if session[:visits]
    session[:visits] += 1
  else
    session[:visits] = 1
  end
  erb :index, layout: :application
end

get "/color/:name" do
    session[:bg_color] = params[:name]
    redirect back
end

# post "/color_changer" do
#    if params["color"] == 1.to_s
#      session[:bg_color] = "red"
#      redirect back
#    elsif params["color"] == 2.to_s
#      session[:bg_color] = "blue"
#      redirect back
#    else params["color"] == 3.to_s
#      session[:bg_color] = "yellow"
#      redirect back
#end

get "/contact" do
    erb :contact, layout: :application
end

get "/temperature" do
    erb :temperature, layout: :application
end

get "/pick_random" do
  erb :pick_random, layout: :application
end

get "/team_picker" do
  erb :team_picker, layout: :application
end

get "/survey" do
  erb :survey, layout: :application
end

get "/faker" do
  erb :faker, layout: :application
end

# To protect a page
get "/test_protect" do
  protected!
  "You're in"
end

post "/submit_contact" do
  temp = params[:temp]
  @f_degre = temp.to_f * 9/5 + 32
  erb :temperature, layout: :application
end

post "/faker" do
  @temp = Faker::Company.bs
  erb :faker, layout: :application
end

post "/pick_team" do
  num_team = params["team_number"].to_f
  random_name = params["random_name"].split(",").shuffle

  total_people = random_name.count.to_f

  member_per_team = total_people / num_team

team = Hash.new()

player=[]

  (1..num_team).to_a.each do |x|
    (1..member_per_team).to_a.each do |v|
      team[x] = random_name[v]
    end
    player << team
  end



  "number of team: #{num_team}, Number of player per team: #{member_per_team}, total amount of player: #{total_people}, #{team} "
  #@winner

  #erb :team_picker, layout: :application
end

post "/pick_random" do

  @random_name = params["random_name"]
  @winner = @random_name.split(",").sample

  session[:the_last_winner] = @winner
  # This was my solution
  #random_name = params["random_name"].split(",")
  #@random_name = random_name.join(",").to_s
  #@winner = random_name.sample

  erb :pick_random, layout: :application
end



  post "/submit_survey" do

    work_best = params["work-best"]
    interested_in = params["interested-in"]
    consider_yourself = params["consider-yourself"]

    if work_best == "deadline" && interested_in == "ideas" &&
      consider_yourself == "rational"
      @type = "Rational"
    else
      @type = "I do not know"
    end

    erb :survey_result, layout: :application
  end
