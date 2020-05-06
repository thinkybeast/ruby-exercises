# Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value


# initialize a 'cpu' hash with a register key with val 0 and a stack key with val []
# split command str into array of commands
# interate through commands, passing command and cpu hash into execute method
# execute command will perform action and mutate hash values as nec, no need to pass a new hash back

SUCCESS = nil
ERROR_INVALID = 'Invalid token!'
ERROR_STACK = 'Empty stack!'


def init_cpu
  {
      register: 0,
      stack: []
    }
end

def invalid_token?(token)
  token.to_i.to_s != token
end

def set_reg(token, cpu)
  return ERROR_INVALID if invalid_token?(token)
  cpu[:register] = token.to_i
  SUCCESS
end

def push(cpu)
  cpu[:stack] << cpu[:register]
  SUCCESS
end

def add(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] += cpu[:stack].pop
  SUCCESS
end

def subtract(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] -= cpu[:stack].pop
  SUCCESS
end

def mult(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] *= cpu[:stack].pop
  SUCCESS
end

def div(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] /= cpu[:stack].pop
  SUCCESS
end

def modulo(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] %= cpu[:stack].pop
  SUCCESS
end

def pop(cpu)
  return ERROR_STACK if cpu[:stack].empty?
  cpu[:register] = cpu[:stack].pop
  SUCCESS
end


def print_reg(cpu)
  puts "#{cpu[:register]}"
end

def execute(command, cpu)
   case command
    when 'PUSH'   then push(cpu)
    when 'ADD'    then add(cpu)
    when 'SUB'    then subtract(cpu)
    when 'MULT'   then mult(cpu)
    when 'DIV'    then div(cpu)
    when 'MOD'    then modulo(cpu)
    when 'POP'    then pop(cpu)
    when 'PRINT'  then print_reg(cpu)
    else               set_reg(command, cpu)
    end
end


def minilang(command_str)
  cpu = init_cpu
  result = nil
  p command_str
  commands = command_str.split(' ')
  commands.each do |command| 
    result = execute(command, cpu)
    break unless result == SUCCESS 
  end

  result
end



p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('7 PRINT ADD 5')
p minilang('7 PRINT F ADD')

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')

# (3 + (4 * 5) - 7) / (5 % 3)


# reg = 8
# stack = []

# 3 
# PUSH
# 5
# MOD
# PUSH
# 7 
# PUSH
# 3 
# PUSH
# 4
# PUSH
# 5
# MULT
# ADD
# SUB
# DIV
# PRINT

