=begin
Write a class that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

Programs will be supplied to your language method via a string passed in as an argument. Your program should produce an error if an unexpected item is present in the string, or if a required stack value is not on the stack when it should be (the stack is empty). In all error cases, no further processing should be performed on the program.

You should initialize the register to 0.


Wanted to share a lesson I recently learned, in case anyone encounters it (and to make sure I understand correctly). You can't use the `+=` assignment syntactical sugar on private class methods! That's because there are two things going on at once:

  1. In general, you can't invoke private methods on `self`. E.g. private methods must be invoked within the class, not on an object of the class, therefore invoking something like `self.some_private_method` will raise an error.
  2. When performing assignment within a class instance method, you MUST use `self.some_ivar = val` to call the appropriate setter method, otherwise you will be assigning to a local variable. 

You might assume then, that you can do `self.some_ivar += val`. After all, you know that without `self`, you'd be creating a new local variable. However, this raises an error about invoking a private method. What gives?

That's because ruby's syntactical sugar seems to interpret this as `self.some_ivar = self.some_ivar + val`. In other words, the left side of the assignment (invoking the private SETTER on self) is okay, but the right side of the assignment is attempting to invoke the private GETTER on self, which raises the error.

To avoid the error, you can't use +=; you must use the explicit assignment `self.some_ivar = some_ivar + val`

Hope this save you some time, and if I'm misunderstanding anything, please correct me!
=end

### IMPORTANT LESSON:
### you can't invoke private methods on self; UNLESS you are performing assignment using a private writer, in which case, you must use self.object_name = new_val. this makes the += etc. syntactical sugar fail, however, as it attempts to expand the expression self.object name = self.object_name + new_val. self can only be used on the assignment side, not the value side, hence, you throw an exception. phew!



require 'set'
require 'pry'
require 'pry-byebug'
class MiniLangRuntimeError < RuntimeError ; end
class BadTokenError < MiniLangRuntimeError; end
class EmptyStackError < MiniLangRuntimeError; end

class Minilang

  FUNCTIONS = Set.new %w(PUSH ADD SUB MULT DIV MOD POP PRINT)
  

  def initialize(command_str)
    @register = 0
    @stack = []
    @command_str = command_str
  end

  def eval(args)
    formatted_cmds = format(@command_str, args)
    @commands = formatted_cmds.split(' ')
    commands.each { |command| eval_command(command) }
  rescue MiniLangRuntimeError => error
    puts error.message
  end

  private
  attr_accessor :register, :stack
  attr_reader :commands

  def eval_command(command)

     if FUNCTIONS.include?(command)
        send(command.downcase)
      elsif valid_int?(command)
        store(command)
      else
        raise BadTokenError, "Invalid token: #{command}."
      end
  end

  def store(val)
    self.register = val.to_i
  end

  def push
    stack << register
  end  

  def add
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = register + stack.pop
  end  

  def sub
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = register - stack.pop
  end  

  def mult
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = register * stack.pop
  end  

  def div
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = register / stack.pop
  end  

  def mod
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = register % stack.pop
  end  

  def pop
    raise EmptyStackError.new("Empty stack!") if stack.empty?
    self.register = stack.pop
  end

  def print
    puts register
  end

  def valid_int?(command)
    command == command.to_i.to_s
  end

end


CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees: 100)
minilang.eval(degrees: -40)

FARENHEIT_TO_CENTIGRADE =
  '9 PUSH 5 PUSH 32 PUSH %<degrees>d SUB MULT DIV PRINT'

minilang = Minilang.new(FARENHEIT_TO_CENTIGRADE)
minilang.eval(degrees: 212)

AREA_SQUARE =
  '%<length>d PUSH %<width>d MULT PRINT'

minilang = Minilang.new(AREA_SQUARE)
minilang.eval(length: 5, width: 8)


# Minilang.new('PRINT').eval
# # 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)