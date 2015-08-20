require "sinatra"

get "/" do
	erb :index
end

get "/add/:number_one/:number_two" do |number_one, number_two|

	"#{number_one.to_i + number_two.to_i}"

end

get "/multiply/:number_one/:number_two" do |number_one, number_two|

	"#{number_one.to_i * number_two.to_i}"

end

get "/divide/:number_one/:number_two" do |number_one, number_two|

	"#{number_one.to_i / number_two.to_i}"

end

get "/subtract/:number_one/:number_two" do |number_one, number_two|

	"#{number_one.to_i - number_two.to_i}"

end