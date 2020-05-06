# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.


def make_light_board(num_lights)
  board = {}
  1.upto(num_lights) { |i| board[i] = false }
  board
end

def on_lights(light_board)
  light_board.select { |_, v| v == true }.keys
end

def display_result(light_board)
  ons, offs = light_board.partition { |_, v| v == true }.each do |result| 
   result.map! { |light| light[0]}
 end
  puts "Lights #{ons.join(', ')} are on."
  puts "Lights #{offs.join(', ')} are off."

end


def toggle_lights(n)
  # represent lights with an n element hash
  # light[key] == true or false
  # n times, iterate through hash, and keep a counter of iterations (nested each)
  # if light[key] % iteration_count == 0, flip switch
  # finally, select keys where value == true

  light_board = make_light_board(n)

   1.upto(n) do |round|
    light_board.each_key do |k|
      light_board[k] = !light_board[k] if k % round == 0
    end
  end
  display_result(light_board)
  on_lights(light_board)
end



# p toggle_lights(5) == [1, 4]
p toggle_lights(10) == [1, 4, 9]
