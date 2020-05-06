# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# break str into array of chars
# create empty string
# iterate through char array
# add char to new string UNLESS that char is already the last char of the new string
# return string

def crunch(str)
  crunch_str = ''

  letters = str.chars
  letters.each do |ch|
    crunch_str << ch unless ch == crunch_str[-1]
  end

  crunch_str
end

# crunch w regex

def rgx_crunch(str)
  uniq_chars = str.chars.uniq
  uniq_chars.each do |ch|
    str.gsub!(/#{ch}{2,}/, ch)
  end
  str
end


p rgx_crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p rgx_crunch('4444abcabccba') == '4abcabcba'
p rgx_crunch('ggggggggggggggg') == 'g'
p rgx_crunch('a') == 'a'
p rgx_crunch('') == ''