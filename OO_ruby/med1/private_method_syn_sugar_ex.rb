class Party 
  def initialize
    @new_friends = 0
  end

  def meet(name)
    puts "Hi, #{name}!"
    add_friend 
  end

  def friend_count
    puts "I've made #{new_friends} new friends!"
  end

  private

  attr_accessor :new_friends

  def add_friend
    begin
      self.new_friends += 1
    rescue
      self.new_friends = new_friends + 1
    end
  end
end


holiday_party = Party.new
holiday_party.meet('Aya')     # Hi Aya!
holiday_party.meet('Mike')    # Hi Mike!
holiday_party.friend_count    # I've made 2 new friends!
holiday_party.meet('Lindsay') # Hi Lindsay!
holiday_party.friend_count    # I've made 2 new friends!