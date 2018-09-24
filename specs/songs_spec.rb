require("minitest/autorun")
require('minitest/rg')
require_relative("../songs.rb")
require_relative("../guests.rb")
require_relative("../rooms.rb")

class SongsTest < MiniTest::Test

# push songs to a hash based on plays, genre and artist
      def setup
        @song_list = {
          songs: [
            {
              name: "Stand by Me",
              genre: :soul,
              artist: "Ben E. King",
              plays: 501
            },
            {
              name: "Wuthering Heights",
              genre: :pop,
              artist: "Kate Bush",
              plays: 502
            },
            {
              name: "Hey Jude",
              genre: :pop,
              artist: "Beatles",
              plays: 503
            },
            {
              name: "Livin’ on a Prayer",
              genre: :rock,
              artist: "Bon Jovi",
              plays: 101
            },
            {
              name: "Bohemian Rhapsody",
              genre: :rock,
              artist: "Queen",
              plays: 301
            },
            {
              name: "Don’t Go Breaking My Heart",
              genre: :pop,
              artist: "Elton John and Kiki Dee",
              plays: 101
            },
            {
              name: "Faith",
              genre: :pop,
              artist: "George Michael",
              plays: 201
            },
            {
              name: "The Real Slim Shady",
              genre: :pop,
              artist: "Eminem",
              plays: 101
            },
            {
              name: "Sweet Home Alabama",
              genre: :pop,
              artist: "Lynyrd Skynyrd",
              plays: 105
            },
            {
              name: "Son of a Preacher Man",
              genre: :soul,
              artist: "Dusty Springfield",
              plays: 101
            },
            {
              name: "Let’s Stay Together",
              genre: :soul,
              artist: "Al Green",
              plays: 107
            },
            {
              name: "I Think We’re Alone Now",
              genre: :pop,
              artist: "Tiffany",
              plays: 108
            },
            {
              name: "Dead or Alive",
              genre: :rock,
              artist: "Bon Jovi",
              plays: 109
            }
      ],
        admin: {
        year_released: 1997,
        year_copyright: 1996,
      },
      name: "MegaMix Catalogue"
    }
  end
      # def test_song_catalogue_name
      #   name = song_catalogue_name(@song_list)
      #   assert_equal("MegaMix Catalogue", name)
      # end
      #
      # def test_all_song_by_singer__found
      #   songs = songs_by_singer(@song_list, "Bon Jovi")
      #   assert_equal(2, pets.count)
      # end
      #
      # def test_all_songs_by_singer__not_found
      #   songs = songs_by_singer(@song_list, "Pet Shop Boys")
      #   assert_equal(0, songs.count)
      # end

end
