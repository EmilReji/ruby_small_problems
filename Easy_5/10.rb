def print_in_box(str)
  str = str[0..76] if str.size > 76
  str = " " + str + " "
  puts "+" + "-" * str.size + "+"
  puts "|" + " " * str.size + "|"
  puts "|" + str + "|"
  puts "|" + " " * str.size + "|"
  puts "+" + "-" * str.size + "+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

print_in_box('To boldly go where no one has gone before.dddddddddddsdfsjdfkfhskfjsdfkjshfwuinjviebniojejio')
