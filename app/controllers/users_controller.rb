class UsersController < ApplicationController
  
get '/signup' do
    if !logged_in?
     erb :"users/signup"
   else 
     redirect '/tweets'
    end
end 
  
  post '/signup' do
    # binding.pry
    if params[:username] != "" && params[:email] != "" && params[:password] != ""
      # binding.pry
      @user= User.new(params)
      @user.save
      session[:user_id]= @user.id 
      redirect to '/tweets'
    else 
      # binding.pry 
      redirect to '/signup'
   end
 end

end
