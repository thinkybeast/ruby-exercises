class SecretHandshake

  COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump']
  
  def initialize(input)
    @command_arr = validate(input)
  end

  def commands
    handshake = COMMANDS.select.with_index { |_, idx| @command_arr[idx] == 1 }
    reverse? ? handshake.reverse : handshake  
  end

  private 

  def validate(input)
    input.is_a?(Integer) ? input.digits(2) : input.to_i.digits
  end

  def reverse?
    @command_arr.size == 5 
  end

end