class Song
    @@genres= []
    @@count = 0
    @@artists=[]

    attr_reader :name, :genre, :artist

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@genres << genre
        @genre = genre
        @@count +=1
        @@artists << artist

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

    def self.genre_count
        gen = @@genres.tally
        gen
    end
    
    def self.artist_count
        art = @@artists.tally
        art
    end


end