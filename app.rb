require "sinatra"
require_relative "make_order.rb" 
get '/' do 
erb	:sandwich_parts
end
post '/sandwich_parts' do
	puts "MADE IT TO POST SANDWICH PARTS DO"
	# order = order(toppings)
	toppings = params[:toppings].to_s

	puts "toppings = #{toppings}"
	redirect'/order?toppings=' + toppings
end
get '/order' do
	puts "MADE IT TO gt ORDER DO"
	# order = order(toppings)
	toppings = params[:toppings].to_s

	puts "MADE IT TO POST ORDER DO"
	puts "TOPPINGS + #{toppings}"
	erb :order, :locals=>{:toppings=>toppings}
end
post '/order' do
	puts "MADE IT TO POST ORDER DO"
	# order = order(toppings)
	toppings = params[:toppings]
	toppings = toppings.to_s
	puts "MADE IT TO POST ORDER DO"
	puts "TOPPINGS + #{toppings}"
	redirect '/confirmation?toppings' + toppings
end
get  '/confirmation'do
puts "MADE IT TO post confimation DO"
	# order = order(toppings)
	toppings = params[:toppings].to_s

	puts "MADE IT TO POST ORDER DO"
	puts "TOPPINGS + #{toppings}"
	erb :order, :locals=>{:toppings=>toppings}
end
post '/confirmation'do
puts "MADE IT TO post confimation DO"
	# order = order(toppings)
	toppings = params[:toppings].to_s

	puts "MADE IT TO POST ORDER DO"
	puts "TOPPINGS + #{toppings}"
	erb :order, :locals=>{:toppings=>toppings}
end