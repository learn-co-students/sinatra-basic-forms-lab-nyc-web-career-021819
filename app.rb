# App
#   GET /
#     sends a 200 status code (FAILED - 7)
#     has a link with the text "List A Puppy" (FAILED - 8)
#     has a link to list a puppy that links to /new (FAILED - 9)
#   GET /new
#     sends a 200 status code (FAILED - 10)
#     renders a form that can POST a name, breed, and age (FAILED - 11)
#   POST /puppy
#     sends a 200 status code (FAILED - 12)
#     recieves a request from /new at /puppy (FAILED - 13)
#     displays the puppy information dynamically (FAILED - 14)

require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
  erb :index
  end

  get "/new" do
  erb :create_puppy
  end

  post "/puppy" do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :display_puppy
  end

end
