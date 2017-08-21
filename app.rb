require "sinatra"

get '/' do 
erb	:sandwich_parts
end

post '/sandwich_parts' do
    # toppings = params[:toppings].to_s
   	toppings = params[:toppings].join(', ')
    "#{toppings} array to string here"
     redirect'/order?toppings=' + toppings
end

get '/order' do

	toppings = params[:toppings].split(', ')
  "#{toppings}array here after redirect"
	 erb :order, :locals=> {:toppings => toppings}
end
post '/order' do
	toppings = params[:toppings].join(', ')
	"#{toppings}array here after post from order.erb should be array"
	 redirect '/confimation?toppings=' + toppings 
end
get  '/confimation'do
puts "MADE IT TO get confimation DO"
	toppings = params[:toppings].split(', ')
	puts " get TOPPINGS + #{toppings}"
	# value = params[:value].split
	erb :confimation, :locals => {:toppings => toppings}
end
