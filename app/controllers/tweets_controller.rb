class TweetsController < ApplicationController

get '/tweets' do #index
  @tweets =Tweet.all 
 
  end
end
