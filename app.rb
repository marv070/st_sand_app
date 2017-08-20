require "sinatra"

get '/' do 
erb	:sandwich_parts
end

post '/sandwich_parts' do
    # toppings = params[:toppings].to_s
   	toppings = params[:toppings].join(',')
    # p "what does toppings.to_s look like: #{toppings}"
    # p "what if instead i use toppings.join(',') #{toppings_with_join_method}"
    redirect'/order?toppings=' + toppings
end

get '/order' do

	toppings = params[:toppings].split(', ')
	erb :order, :locals=> {:toppings => toppings}
end
post '/order' do
	toppings = params[:toppings].join(', ')
	# value = params[:value].join(', ')
	redirect '/confimation?toppings=' + toppings 
end
get  '/confimation'do
puts "MADE IT TO get confimation DO"
	toppings = params[:toppings].split(', ')
	puts " get TOPPINGS + #{toppings}"
	# value = params[:value].split
	erb :confimation, :locals => {:toppings => toppings}
end
post '/confimation'do
puts "MADE IT TO post confimation DO"
	toppings = params[:toppings].join(', ')

	puts " post TOPPINGS + #{toppings}"
	
	erb :confimation, :locals=>{:toppings=>toppings}
end