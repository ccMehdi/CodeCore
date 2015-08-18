info = {"vancouver" => 234234324, "toronto" => 2112124,
        "montreal" => 3456543, "quebec" => 6453738,
        "winnipeg" => 9223649}

# let's get the key here

info.each do |k,v|
  puts "#{k}"
end

# let's get the value here
info.each do |k,v|
  puts "#{v}"
end
