def my_method
  puts "hello"
  #this will execute the block given to the method
  yield if block_given?
  puts "Bye"
end

my_method do
  puts ">>>>>>>>>>>>"
  puts "CALLING BLOCK WITH DO/END"
  puts ">>>>>>>>>>>>"
end


my_method { puts ">>>>>>>>>>>>> CALLING WITH {}"}


# result:
# hello --> this is the first line of code in the method
# Than yield and execute the command in the do/end
# >>>>>>>>>>>>
# CALLING BLOCK WITH DO/END
# >>>>>>>>>>>>
# After commands executed in the do/end with will execute the balance of the method
# Bye
# hello
# >>>>>>>>>>>>> CALLING WITH {}
# Bye


def my_method(hash)

  puts "hello #{hash[:name]}"
  yield #this will execute the block given to the method
  puts "Bye"
end

my_method name: "Mehdi" do
  puts ">>>>>>>>>>>>"
  puts "CALLING BLOCK WITH DO/END"
  puts ">>>>>>>>>>>>"
end

my_method ({name: "Mehdi"}) { puts ">>>>>>>>>>>>> CALLING WITH {}"}
