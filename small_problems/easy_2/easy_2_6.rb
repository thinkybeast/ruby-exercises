# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.


(1..99).each {|n| puts n if n.odd?}

puts (1..99).select {|n| n % 2 == 1}