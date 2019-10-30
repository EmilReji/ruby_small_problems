=begin
A collection of spelling blocks has two letters per block, as shown in this list:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do 
not use both letters from any given block. Each block can only be used once.
Write a method that returns true if the word passed in as an argument can be spelled 
from this set of blocks, false otherwise.

Input: String   Output: Boolean
Case Insensitive based on test case
Algorithm:
Create two arrays of letters such that if arr1[1] == 'B' then arr2[1] == 'O'
Given input string, upcase! to remove case, convert to array of characters; 
First check if arr.uniq.length == arr.length; otherwise return false
This is because there are no duplicate chars in this string
Iterate over the array
- Given current letter, check which index it is in arr1 (i); if found
  - Use that index to verify arr2[i] is not in string
    - If in string, then remove that index from arr1 and arr2; then go to next char
    - If not in string, return false
  - If found, return false
- If index is not in arr1 (i)
  - Given current letter, check which index is in arr2 (i); if found
  - Use that index to verify arr1[i] is not in string
    - If in string, then remove that index from arr1 and arr2; then go to next char
    - If not in string, return false
  - If found, return false
if iterated through whole array successfully, then return true
=end

def block_word?(str)
  block_one = ['B','X','D','C','N','G','R','F','J','H','V','L','Z']
  block_two = ['O','K','Q','P','A','T','E','S','W','U','I','Y','M']
  arr = str.upcase.chars
  arr.each do |char|
    if block_one.include?(char)
      index = block_one.index(char)
      if arr.include?(block_two[index])
        return false
      else
        block_one.delete_at(index)
        block_two.delete_at(index)
      end
    elsif block_two.include?(char)
      index = block_two.index(char)
      if arr.include?(block_one[index])
        return false
      else
        block_one.delete_at(index)
        block_two.delete_at(index)
      end
    else
      return false
    end
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true