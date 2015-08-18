my_info = Hash.new

puts "Please enter your first name:"
my_info["first name"] = gets.chomp.capitalize

puts "Please enter your last name:"
my_info["last name"] = gets.chomp.capitalize

puts "Please enter your age:"
my_info["age"] = gets.chomp

print "Please enter the cities you have visited. When finished, write done: "
city = gets.chomp

my_info["city"] = []
input = []
input_counts = Hash.new(0)

while city != "done"
  my_info["city"] << city
  input_counts["input"] += 1
  print "Please enter the cities you have visited. When finished, write done: "
  city = gets.chomp
end

my_info.each do |k, v|
  puts "Your #{k} is #{v}"
end
