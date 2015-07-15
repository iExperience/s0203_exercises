
engines = ["Google", "Bing", "Ask Jeeves"].map do |e|
  if e == "Google"
    e = "OK"
  elsif e == "Bing"
    e = "Bad!"
  else
    e = "What is that?"
  end
end

# map returns the new changed array while each returns the original array
