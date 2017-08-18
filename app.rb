require "sinatra"
require_relative "make_order.rb" 
get '/' do 
# erb	:sandwich_parts
end
post '/sandwich_parts' do
	puts "MADE IT TO POST SANDWICH PARTS DO"
	# order = order(toppings)
	toppings = params[:toppings]
	# toppings.to_s.flatten!
	puts "toppings = #{toppings}"
	redirect'/order?toppings=' + toppings
end
post '/order' do
	puts "MADE IT TO POST ORDER DO"
	# order = order(toppings)
	toppings = params[:toppings]
	# toppings = toppings.to_s.flatten!
	puts "MADE IT TO POST ORDER DO"
	puts "TOPPINGS + #{toppings}"
	erb :order, :locals=>{:toppings=>toppings}
end