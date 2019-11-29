VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(arr)
  arr.map do |str|
    str.chars.select do |char|
      !VOWELS.include?(char.downcase)
    end.join('')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
