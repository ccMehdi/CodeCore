my_hash = {"BC" =>["Vancouver", "Richmond"], "AB" => ["Edmonton", "Calgary"]}

my_hash.each do |province, city|
  puts "#{province}: #{city.join(",")}" 
end
