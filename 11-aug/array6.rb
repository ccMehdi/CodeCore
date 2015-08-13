new_array = ["bob", "mase", "frank", "tam", "john"]

cap = []
new_array.map do |name|
  cap << name.capitalize
end
puts cap

cap2 = []
new_array.map do |name|
  cap2 << name.capitalize.reverse
end
puts cap2

names = %w(jim jong tom)

names.map! {|name| name.capitalize.reverse}
