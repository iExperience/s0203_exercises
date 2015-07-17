require "sinatra"

get "/" do

	aobo = { person_name: "Aobo", number: "432344",}
	kleo = { person_name: "Kleo", number: "2356765",}
	maria = { person_name: "Maria", number: "445345345",}

	@contacts = [aobo, kleo, maria]
	erb :index
end

get "/contacts" do

	aobo = { person_name: "Aobo", number: "432344",}
	kleo = { person_name: "Kleo", number: "2356765",}
	maria = { person_name: "Maria", number: "445345345",}

	@contacts = [aobo, kleo, maria]
	erb :contacts
end


get "/contacts/:name" do |name|

	aobo = { person_name: "Aobo", number: "432344",}
	kleo = { person_name: "Kleo", number: "2356765",}
	maria = { person_name: "Maria", number: "445345345",}

	contacts = [aobo, kleo, maria]

	contacts.each do |info|
		if "#{name}" == info[:person_name].downcase
		 @phone_number = info[:number]
		end
	end
	
	erb :single_contacts
end



