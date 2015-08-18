names = ["Mehdi", "bob", "Mike", "Sam", "Paul", "John"]
print names
num_team = 3

number_players = names.count

player_per_team = (number_players / num_team)
member = Hash.new
puts "number of players per team: #{player_per_team}"

(1..num_team).each do |x|
  (1..player_per_team).each do |y|
    puts y
    member[x] = names[y]
    #names.delete(names[y])
  end
end
 print member
