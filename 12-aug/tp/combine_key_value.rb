arr = Hash.new(0)
arr = {:a => "123", :b => "345", :c => "678", :d => "910"}

new_arr = []

arr.each do |k,v|
  new_arr << "#{k}#{v}"
end

print new_arr
