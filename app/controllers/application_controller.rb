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
    
      @user =User.create(username: params[:name], email: params[:email], password: params[:password])
      @user.save
      redirect to '/tweets'
   end
   
 end

