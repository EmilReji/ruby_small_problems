=begin

=end

def letter_case_count(str)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if ('A'..'Z').include?(char)
      hash[:uppercase] += 1
    elsif ('a'..'z').include?(char)
      hash[:lowercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
