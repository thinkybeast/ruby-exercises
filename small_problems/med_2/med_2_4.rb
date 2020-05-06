# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.


def balanced?(str)
  count = 0
  
  str.each_char do |ch|
    case ch 
    when /[\(|\{|\[]/ then count += 1
    when /[\)|\}|\]]/ then count -= 1
    end

    break if count == -1
  end

  count.zero? && str.count('"').even? && str.count('\'').even?
end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('{(What) [is this]}?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false