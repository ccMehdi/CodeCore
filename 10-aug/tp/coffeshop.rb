print "Which Coffe shop to you want to order from: "

coffee_shop = gets.chomp.split.map(&:capitalize).join(' ')
case coffee_shop
when "Starbucks"
  puts "Grande Latte"
when "Tim Hortons"
  puts "Double Double"
when "Blenz"
  puts "Medium Coffee"
else
  puts "I do not know this coffe shop"
end
