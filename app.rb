require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

#   get '/medicines/:id' do
#   @medicine = all_the_medicines.select do |medicine|
#     medicine.id == params[:id]
#   end.find
#   erb :'/medicines/show.html'
# end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
      product = params[:num1].to_i * params[:num2].to_i
      product.to_s
  end

# get '/goodbye/:name, a dynamic route that returns "Goodbye, (person's name).", a string.
# For example, navigating to localhost:9393/goodbye/jerome should display Goodbye, jerome.
#
# A dynamic route starting with /multiply that accepts two params (num1 and num2) and returns the product of the two numbers.

end
