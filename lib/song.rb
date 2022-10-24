class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end


    # You will need to iterate over the @@genres array and populate a hash with the key/value pairs. 
    # You will need to check to see if the hash already contains a key of a particular genre.
    # If so, increment the value of that key by one, otherwise, create a new key/value pair.

    def self.genre_count
       @@genres.tally
       g = {}

       @@genres.each do |genre|

          if !g[genre]
             g[genre] = 1
          else
             g[genre] += 1
          end
      end

      g
   
    end

    def self.artist_count
        @@artists.tally
        a = {}

        @@artists.each do |artist|

            if !a[artist]
                a[artist] = 1
            else
                a[artist] += 1
            end
        end

        a
        
    end
end