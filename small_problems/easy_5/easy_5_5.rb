# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# given a string
# split into chr
# if not a legal chhar, replace with a space
# if space is next to another space, remove that space

ALPHA_NUM = ('A'..'Z').to_a + ('a'..'z').to_a 

def cleanup(str)
  letters = str.chars
  letters.map! { |chr| ALPHA_NUM.include?(chr) ? chr : ' ' }
  letters.join.squeeze
end


p cleanup("---what's my +*& line?") == ' what s my line '