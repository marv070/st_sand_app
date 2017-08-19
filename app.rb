require "sinatra"
# require_relative "make_order.rb" 
get '/' do 
erb	:sandwich_parts
end
post '/sandwich_parts' do

	toppings = params[:toppings].to_s
	redirect'/order?toppings=' + toppings
end
get '/order' do

	toppings = params[:toppings].split
	erb :order, :locals=>{:toppings=>toppings}
end
post '/order' do
	toppings = params[:toppings].to_s
	redirect '/confimation?toppings=' + toppings
end
get  '/confimation'do
puts "MADE IT TO post confimation DO"
	toppings = params[:toppings].split
	puts "TOPPINGS + #{toppings}"
	erb :confimation, :locals=>{:toppings=>toppings}
end
post '/confimation'do
puts "MADE IT TO post confimation DO"
	toppings = params[:toppings].to_s
	puts "TOPPINGS + #{toppings}"
	erb :confimation, :locals=>{:toppings=>toppings}
end