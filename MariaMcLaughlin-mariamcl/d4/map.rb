# map.rb

engines = ["Google", "Bing", "Ask Jeeves"]

results = engines.map do |element|
  if element == "Google"
    element = "OK"
  elsif element == "Bing"
    element = "Bing"
  else
    element = "What is that?"
  end
end

puts results
# => ["OK", "Bad!", "What is that?"]