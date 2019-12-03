=begin
given the num, run a loop num times
within loop start by printing num - 1 spaces and 1 *
then decrease space by 1 and * by 1
repeat till done
=end

def triangle(num)
  1.upto(num) do |val|
    puts ' ' * (num - val) + '*'  * (val)
  end
end

triangle(5)
triangle(9)
