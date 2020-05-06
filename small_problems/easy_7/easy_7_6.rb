# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.


def staggered_case(str, type = 'alpha only')

  upcase = true
  result_str = ''

  str.each_char do |ch|
      if ch =~ /[a-zA-Z]/       
        result_str << (upcase ? ch.upcase : ch.downcase)
        upcase = !upcase
      else
        result_str << ch
        upcase = !upcase if type == 'all'
      end
    end

    result_str
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', 'all') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

