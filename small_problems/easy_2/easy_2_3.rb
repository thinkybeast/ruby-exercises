# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.


def calc_tip(amount, rate)
  percent = rate.to_f / 100
  tip = amount * percent
  total = amount + tip
  [tip, total]
end

puts 'How much is the bill?'
bill = gets.chomp.to_f
puts "What \% do you want to tip?"
tip_rate = gets.chomp.to_f

tip, total = calc_tip(bill, tip_rate)

puts "Tip is $#{format('%.2f', tip)}"
puts "Total comes to $#{format('%.2f', total)}"