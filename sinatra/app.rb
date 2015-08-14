require "sinatra"

require "sinatra/reloader" if development?

  get "/" do
    erb :index, layout: :application
  end

  get "/contact" do
      erb :contact, layout: :application
  end

  get "/temperature" do
      erb :temperature, layout: :application
  end

  post "/submit_contact" do
    temp = params[:temp]
    @f_degre = temp.to_f * 9/5 + 32
    erb :temperature, layout: :application
  end
