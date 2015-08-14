my_info = Hash.new

puts "Please enter your first name:"
my_info["first name"] = gets.chomp.capitalize

puts "Please enter your last name:"
my_info["last name"] = gets.chomp.capitalize

puts "Please enter your city of birth:"
my_info["birth city"] = gets.chomp.capitalize

puts "Please enter your age:"
my_info["age"] = gets.chomp

my_info.each do |k, v|
  puts "Your #{k} is #{v}"
end
