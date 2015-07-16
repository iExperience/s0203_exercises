require "sinatra"

erica = { name: "Erica", number: "1-914-911-9130", city: "Los Angeles, CA"}
ian   = { name: "Ian", number: "1-914-450-8009", city: "Dallas, TX"}
josh  = { name: "Josh", number: "1-914-450-8559", city: "Modesto, CA"}
tyler = { name: "Tyler", number: "1-914-582-9330", city: "Rye, NY"}
april  = { name: "April", number: "1-234-567-8910", city: "Denali, AK"}
kat = { name: "Kat", number: "1-917-467-5670", city: "Boston, MA"}
contact_array = [april, erica, ian, josh, kat, tyler]

def contacts_to_string contact_arr
	return_string = ""
    contact_arr.each do |person|
    	return_string += contact_to_string(person)
    end	
    return_string
end	

def contacts_to_array_of_strings contact_arr
	contact_arr.map do |contact_hash|
		contact_to_string(contact_hash)
	end	
end

def contact_to_string contact_hash
   	title = "CONTACT: "
   	title += "(new)Name:         " + contact_hash[:name]
   	title += "(new)Phone Number: " + contact_hash[:number]
   	title += "(new)Home City:    " + contact_hash[:city]
   	title
end	

def get_contact_names contact_arr
    contact_arr.map do |contact|
    	contact[:name]
    end	
end

get "/" do 
	@contacts = get_contact_names(contact_array)
	erb :home 
end

get "/contacts" do 
	@return_array = contacts_to_string(contact_array).split("(new)")
	@contacts = get_contact_names(contact_array)
	@contact_array = contacts_to_array_of_strings(contact_array)
	erb :contacts 
end

get "/contacts/:name" do |name|
	index = get_contact_names(contact_array).index(name.capitalize)
	if index >= 0
		@contact_info = contact_to_string(contact_array[index]).split("(new)")
	end
	erb :contact 
end