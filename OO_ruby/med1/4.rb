
# Your task is to write a CircularQueue class that implements a circular queue for arbitrary objects. The class should obtain the buffer size with an argument provided to CircularQueue::new, and should provide the following methods:

# enqueue to add an object to the queue
# dequeue to remove (and return) the oldest object in the queue. It should return nil if the queue is empty.
# You may assume that none of the values stored in the queue are nil (however, nil may be used to designate empty spots in the buffer).

=begin solution using Queue class
class CircularQueue

  def initialize(buffer)
    @buffer = buffer
    @queue = Queue.new
  end

  def enqueue(el)
    dequeue if queue.size == buffer
    queue.push(el)
  end


  def dequeue
    return nil if queue.empty?
    queue.pop
  end

  private

  attr_reader :queue, :buffer
end
=end

class CircularQueue
  def initialize(size)
    @buffer = size
    @queue = []
  end

  def enqueue(el)
    dequeue if queue.size == buffer
    queue << el
  end

  def dequeue
    return nil if queue.empty?
    queue.shift
  end

  private

  attr_reader :queue, :buffer
end


queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
 
