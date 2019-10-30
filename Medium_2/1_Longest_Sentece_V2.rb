=begin
Write a program that reads the content of a text file 
and then prints the longest sentence in the file based 
on number of words. Sentences may end with periods (.), 
exclamation points (!), or question marks (?). 
Any sequence of characters that are not spaces or 
sentence-ending characters should be treated as a word. 
You should also print the number of words in the longest sentence.

Input: Large string/text file
Output: Prints the largest sentene along with the number of words in it
=end

def longest_sentence(str)
  str = str.gsub('!', '.')
  str = str.gsub('?', '.')
  sentences = str.split('.')
  largest_index = 0
  sentences.each_with_index do |sentence, index|
    #puts  "Largest index is : #{largest_index} comparison: #{sentence.split(' ').length} > #{sentences[0].split(' ').length}"
    if sentence.split(' ').length > sentences[largest_index].split(' ').length
      largest_index = index
    end
  end
  puts "The longest sentence has #{sentences[largest_index].split(' ').length} words and is as follows:"
  puts sentences[largest_index]
end

file1 = File.open("text.txt")
str1 = file1.read
#p str1
longest_sentence(str1) # 87

file2 = File.open("text2.txt")
str2 = file2.read
#p str2
longest_sentence(str2) # 157


