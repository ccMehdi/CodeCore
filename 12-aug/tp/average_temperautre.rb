
# The formula to convert Celsius to Fahrenheit is: F = C * 9/5 + 32
average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}

average_temperature_in_f = Hash.new

average_temperature_in_c.map do |k, v|
  f = v.to_f * 9/5 + 32
  average_temperature_in_f[:"#{k}"] = f
end

print average_temperature_in_f
