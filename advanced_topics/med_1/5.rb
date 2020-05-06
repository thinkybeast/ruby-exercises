items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*veg, wheat |
  puts veg.join(', ')
  puts wheat
end

gather(items) do |apples, *veg, wheat |
  puts apples
  puts veg.join(', ')
  puts wheat
end


gather(items) do |apples, *veg|
  puts apples
  puts veg.join(', ')
end


gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end