require 'pry'

# require_relative "./song.rb"
# require_relative "./genre.rb"

class Artist

    attr_reader 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)    
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.collect {|song| song.genre}
    end


end