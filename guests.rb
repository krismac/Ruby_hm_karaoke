class Guests

  attr_reader :name, :favsong
  attr_accessor :wallet

    def initialize(name, wallet, age, favsong)
      @name = name
      @wallet = wallet
      @age = age
      @favsong = favsong
    end

    def book_room()
      if sufficient_capacity?(book)
        @wallet -= rooms.price()
        @capacity += rooms.capacity_level()
      end
    end

    def sufficient_funds?(rooms)
      return wallet >= rooms.price()
    end

    def pay_for_room(rooms)
        @wallet -= rooms.price()

    def reqsong(reqsong)
      return reqsong.play_song()
    end

    def reqsong(reqsong)
      return "I had a great time singing #{reqsong.name}"
    end

    # def fav_song(favsong, reqsong)
    #    if reqsong == @favsong
    #   return "Whoo #{favsong} is the best"
    # end

   #  def cheer(songs)
   # songs.each {|song| return "Whooo!" if song.title == @favourite_song.title }
   #  end

  end
end
