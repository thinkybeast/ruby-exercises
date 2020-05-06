# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

def staggered_case(str, start_with = 'up')
  characters = str.chars.each_with_index.map do |ch, i|
    case start_with
    when 'up' then i.even? ? ch.upcase : ch.downcase
    when 'down' then i.even? ? ch.downcase : ch.upcase
    end
  end

  characters.join
end

p staggered_case('I Love Launch School!') # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', 'down') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'