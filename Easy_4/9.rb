=begin
input: number; non negative integer
output: string
create a mapping from 0 to 9 and map that to '0' to '9'
run a loop that breaks when number is 0
run divmod(10) with 1st value being new number and 2nd being a single number
take that number, get corresponding string mapping, and add tot eh beginning of the str
return final str
=end

MAPPING = {
            0 => '0',
            1 => '1',
            2 => '2',
            3 => '3',
            4 => '4',
            5 => '5',
            6 => '6',
            7 => '7',
            8 => '8',
            9 => '9',
          }


def integer_to_string(num)
  str = ''
  loop do
    last = num.divmod(10)[1]
    str = MAPPING[last] + str
    num = num.divmod(10)[0]
    break if num == 0
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
