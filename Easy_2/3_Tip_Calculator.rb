=begin
Create a simple tip calculator. The program should prompt for a bill 
amount and a tip rate. The program must compute the tip and then 
display both the tip and the total amount of the bill.

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

def output_result(bill, tip_per)
  p (tip_per/100)
  tip = (tip_per/100) * bill
  total = tip + bill
  puts "The tip is $#{format("%0.2f", tip.to_s)}"
  puts "The total is $#{format("%0.2f", total)}"
end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_per = gets.chomp.to_f
output_result(bill, tip_per)
