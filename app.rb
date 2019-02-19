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
      
      phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1]
    @num2 = params[:number2]
    
    case params[:operation]
    
    when 'add'
      sum = (number1 + number)
  end

end