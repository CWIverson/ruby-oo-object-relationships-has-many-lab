require 'pry'
class Song
    @@all=[]
    attr_accessor  :song_name, :artist
    def initialize(title)
        @song_name=title
        @artist
        @@all<<self
    end
    def name
        @song_name
    end
    def artist=(artist)
        @artist = artist
        
       
    end
    def artist_name
        if @artist == nil
        else
            @artist.name
           
        end
    end
    def self.all
        @@all
        
    #binding.pry
    end
end