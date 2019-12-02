require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  get '/signup' do
    
     erb :"/users/create_user"
  end
  
  post '/signup' do
      
      redirect to '/signup'
   end
   
 end

