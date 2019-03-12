require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
  # erb :profile # @user will be nil here
    # erb :create_pupp
    erb :index
  end


  get "/new" do
    # @user will be nil here
    erb :create_puppy
  end

  post "/puppy" do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    erb :display_puppy
  end

end
