## Ideas
# Rooms (2)
# Max capacity (5/8)
# Variable cost per hour (greater after 18:00)
# Bar (Drinks - acohol and soft)
# Tab (running total only)
# Check in time/ check out time
# Submit song choice
# Playlist
# Waiting list

class Rooms

attr_reader :name, :tab, :guests, :songs, :capacity, :price

  def initialize(name, capacity)
    @name = name
    @tab = tab
    @capacity = capacity
    @price = 10
    @guests = []
    @songs = []
  end

  def add_songs(song)
    @songs << song
  end

  #Capacity check
  def enough_room?()
    @guests.count < @capacity
  end

  def check_guests_in(room, guest)
    return "Sorry, too many singers - we can only take #{@capacity}." if !(enough_room?)
    return "Sorry, you're broke. Come back when you have more money" if !(guest.sufficient_funds?(room))
    @guests << guest
    guest.pay_for_room(room)
  end

  def check_guests_out(check_guests_out)
    # find guest and push to array
    # delete guest from room
    to_delete = []
    guest_to_remove = @guests.find {|guest| guest == check_guests_out}
    return "Sorry, that customer is not checked in" if guest_to_remove == nil

    to_delete << guest_to_remove
    @guests.delete(guest_to_remove)
  end



end
