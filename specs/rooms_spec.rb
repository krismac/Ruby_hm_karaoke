require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")
require_relative("../guests")
require_relative("../rooms")


# add your song to playlist array
# check money
# check capacity
# add to room
# and tab
# has for the number of times a song was sung counter

#remove a song from circulation (delete from array)


class RoomsTest < Minitest::Test


  def setup
    @guest21 = Guests.new("Sinead", 5, 33, "Somewhere over the rainbow")
    @guest22 = Guests.new("Kris", 20, 34, "5, 6, 6, 8")
    @guest23 = Guests.new("Rich", 15, 29, "Sexy Back")
    @song1 = Songs.new("Hammer Time", "MC Hammer")
    @song2 = Songs.new("Ice Ice Baby", "Vanilla Ice")
    @room1 = Rooms.new("Naughty 90s", 2)
  end

    def test_room_has_name
      assert_equal("Naughty 90s", @room1.name)
    end

    def room_has_entry_price
      assert_equal(2, @room1.price)
    end

    def test_room_has_capacity
      assert_equal(2, @room1.capacity)
    end

    def test_has_guest_checked_in
      @room1.check_guests_in(@room1, @guest22)
      assert_equal(1, @room1.guests.count)
    end

    def test_has_guest_checked_out
      @room1.check_guests_in(@room1, @guest22)
      @room1.check_guests_in(@room1, @guest23)
      @room1.check_guests_out(@guest22)
      assert_equal(1, @room1.guests.count)
    end

    def test_has_guest_checked_out__guest_does_not_exist
      @room1.check_guests_in(@room1, @guest22)
      assert_equal("Sorry, that customer is not checked in", @room1.check_guests_out(@guest23))
    end

    def test_does_room_have_songs
      @room1.add_songs(@song1)
      @room1.add_songs(@song2)
      assert_equal(2, @room1.songs.count)
    end

    def test_enough_room__yes
      assert_equal(true, @room1.enough_room?)
    end

    def test_enough_room__no
      @room1.check_guests_in(@room1, @guest23)
      @room1.check_guests_in(@room1, @guest22)
      assert_equal(false, @room1.enough_room?)
    end

    def test_guest_pay_for_room__insufficient_funds
      assert_equal("Sorry, you're broke. Come back when you have more money", @room1.check_guests_in(@room1, @guest21))
    end

    def test_check_guest__full_capacity
      @room1.check_guests_in(@room1, @guest21)
      @room1.check_guests_in(@room1, @guest22)
      @room1.check_guests_in(@room1, @guest23)
      assert_equal("Sorry, too many singers - we can only take 2.", @room1.check_guests_in(@room1, @guest23))
    end


    # def test_cheer
    #    @room.check_guests_in(@guests)
    #    songs = @room.songs
    #    assert_equal("Whooo!", @guests[0].cheer(songs))
    #  end


end

    # def test_songs_sung_most
    #   # store songs sung by group
    #
    # def test_playlist_
    # # print the list of songs that are coming up
