require 'pry'
class Artist
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @songs = []
    end
   
    def add_song(song)
        @songs<<song
        song.artist = self
       # binding.pry
        
    end
    def songs
       
        Song.all.each do |song|
          #binding.pry
            if song.artist.name == @name 
                @songs<<song
               # binding.pry
            end
        end
        @songs
        #binding.pry
    end
    def self.song_count
       Song.all.uniq.length
        #binding.pry
    end

    def add_song_by_name(name)
        song_artist=Song.new(name)
        song_artist.artist=(self)
    end
end