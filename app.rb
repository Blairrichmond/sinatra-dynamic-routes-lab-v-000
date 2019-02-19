require_relative 'config/environment'

class App < Sinatra::Base
 
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end
  
  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end
  
  get "/say/:number/:phrase" do
    phrase = ' '
      
      params[:number].to_i.times do
        phrase += params[:phrase]
      end
  end

end