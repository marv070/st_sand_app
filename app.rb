require "sinatra"
require_relative "make_order.rb" 
get '/' do 
erb	:sandwich_parts, :locals=>{:toppings=>toppings}
end
post '/sandwich_parts' do
	toppings = params[:toppings]
	redirect'/order?toppings='+toppings
end
post '/order' do
	toppings = params[:toppings]
	erb :order, :locals=>{:toppings=>toppings}
end