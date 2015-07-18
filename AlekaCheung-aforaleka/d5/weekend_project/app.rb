require "sinatra"

horoscopes_list = [
	{
		name: "aquarius",
		description: "",
		location: ""
	},
	{
		name: "pisces",
		description: "",
		location: ""
	},
	{
		name: "aries",
		description: "",
		location: ""
	},
	{
		name: "taurus",
		description: "",
		location: ""
	},
	{
		name: "gemini",
		description: "",
		location: ""
	},
	{
		name: "cancer",
		description: "",
		location: ""
	},
	{
		name: "leo",
		description: "",
		location: ""
	},
	{
		name: "virgo",
		description: "",
		location: ""
	},
	{
		name: "libra",
		description: "",
		location: ""
	},
	{
		name: "scorpio",
		description: "",
		location: ""
	},
	{
		name: "sagittarius",
		description: "",
		location: ""
	},
	{
		name: "capricorn",
		description: "",
		location: ""
	}
]

locations = {}


get "/" do
	@horoscopes_list = horoscopes_list
	erb :index
end

get "/:horoscope" do |horoscope|
	@horoscope = horoscope.strip
	@horoscopes_list = horoscopes_list
	erb :descriptions
end

get "/:horoscope/location" do |horoscope|
	@horoscope = horoscope.strip
	@horoscopes_list = horoscopes_list
	erb :location
end


