# Write a program that reads the content of a text file and 
# then prints the longest sentence in the file based on number 
# of words. Sentences may end with periods (.), exclamation points 
# (!), or question marks (?). Any sequence of characters that are 
# not spaces or sentence-ending characters should be treated as a word. 
# You should also print the number of words in the longest sentence.

# curl http://www.gutenberg.org/files/84/84-0.txt > text2.txt 

=begin
find array of sentences
iterate through array to find sentence with most words
have a varaible called longest that keeps updating
=end

def array_sentences(str)
  sentences = str.split('.')
  sentences.map! do |sent|
    sent.split('?').map! do |sent2|
      sent2.split('!')
    end
  end
  sentences.flatten
end

def longest_sent(str)
  sentences = array_sentences(str)
  longest = ''
  longest_num_words = 0
  sentences.each do |sent|
    if sent.split(' ').length > longest_num_words
      longest = sent
      longest_num_words = sent.split(' ').length
    end
  end
  longest
end


path1 = "./text.txt"
path2 = "./text2.txt" 

str1 = File.read(path1)  
str2 = File.read(path2)

p longest_sent(str1)
p longest_sent(str1).split(' ').length
p longest_sent(str1).split(' ').length == 86

p longest_sent(str2)
p longest_sent(str2).split(' ').length
p longest_sent(str2).split(' ').length == 157