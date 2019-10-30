array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
# line 3 iterates over array1 values and copies the reference to each into array2;
# now both array's contain references to the same string objects
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# line 6 mutates the original string object that array1 references if it starts with C or S
# since both arrays refernce the same objects, both arrays will print same objects
p array1
p array2