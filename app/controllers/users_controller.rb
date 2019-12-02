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

    get '/login' do 
      if logged_in?
        erb :'users/login'
        
      else 
        
      redirect to '/tweets'
   end
end 

post 'login' do
  @user = User.find_by(:username => params)
[:username])
    if @user && @user.authenticate(params[  :password])
    session[:user_id] = @user.id 
    redirect to "/tweets"
    else 
  redirect to "/login"
  
    end
  
  end 

end 