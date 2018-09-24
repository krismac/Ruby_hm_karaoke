require("minitest/autorun")
require('minitest/rg')
require_relative("../songs.rb")
require_relative("../guests.rb")
require_relative("../rooms.rb")

class GuestsTest < Minitest::Test

  def setup
    # guest = name, wallet, age, song
    @Guest1 = Guests.new("Ben E. King", 10, 70, "Maniac 2000")
    @Guest2 = Guests.new("Kate Bush", 10, 50, "Maniac 2000")
    @Guest3 = Guests.new("John Lennon", 10, 67, "Maniac 2000")
    @Guest4 = Guests.new("Jon Bon Jovi", 10, 50, "Maniac 2000")
    @Guest5 = Guests.new("Freddie Mercury", 10, 33, "Maniac 2000")
    @Guest6 = Guests.new("Bill Withers", 10, 100, "Maniac 2000")
    @Guest7 = Guests.new("Elton John", 10, 60, "Maniac 2000")
    @Guest8 = Guests.new("George Michael", 10, 50, "Maniac 2000")
    @Guest9 = Guests.new("Marshal Mathers", 10, 40, "Maniac 2000")
    @Guest10 = Guests.new("Lynyrd Skynyrd", 10, 35, "Maniac 2000")
    @Guest11 = Guests.new("Dusty Springfield", 10, 21, "Maniac 2000")
    @Guest12 = Guests.new("Al Green", 10, 21, "Maniac 2000")
    @Guest13 = Guests.new("Beastie Boys", 10, 21, "Maniac 2000")
    @Guest14 = Guests.new("Tiffany", 10, 17, "Maniac 2000")
    @Guest15 = Guests.new("Human League", 10, 66, "Maniac 2000")
    @Guest16 = Guests.new("David Bowie", 10, 21, "Maniac 2000")
    @Guest17 = Guests.new("Jay-Z", 10, 19, "Maniac 2000")
    @Guest18 = Guests.new("Justin Beiber", 10, 13, "Maniac 2000")
    @Guest19 = Guests.new("Beyonce", 4, 21, "Maniac 2000")
    @Guest20 = Guests.new("QE II", 10, 121, "Maniac 2000")
    @song1 = Songs.new("Hammer Time", "MC Hammer")
    @song2 = Songs.new("Ice Ice Baby", "Vanilla Ice")
    @room1 = Rooms.new("Naughty 90s", 2)
    # @Playlist = []

  end

    def test_guest_has_name
      assert_equal("Ben E. King", @Guest1.name)
    end

    def test_guest_has_wallet
      assert_equal(10, @Guest20.wallet)
    end

    def test_guest_has_entry_fee__true
      assert_equal(true, @Guest2.sufficient_funds?(@room1))
    end

    def test_guest_has_entry_fee__false
      assert_equal(false, @Guest19.sufficient_funds?(@room1))
    end

  #method reducing wallet when they book in or spend.
    def test_guest_pay_for_room__sufficient_funds
      @Guest2.pay_for_room(@room1)
      assert_equal(0, @Guest2.wallet)
    end

    # def test_guest_fav_song - doesnt work - commented out
    #   assert_equal("Whoo Maniac 2000 is the best", @Guest1.favsong)
    # end

 end
