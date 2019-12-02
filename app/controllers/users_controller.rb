class UsersController < ApplicationController
  
get '/signup' do
    
     erb :"/users/create_user"
  end
  
  post '/signup' do
    
      @user =User.create(username: params[:name], email: params[:email], password: params[:password])
      @user.save
      redirect to '/tweets'
   end
   

end
