require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << self.artist
  @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
  @@artists.uniq
  end

def self.genres
  @@genres.uniq
end

def self.genre_count
genre_hash = {}
i = 4
self.genres.each do |genre|
  genre_hash[genre] = i - 2
  i -= 1
end
genre_hash
end

def self.artist_count
artist_hash = {}
count = 0
while count < self.artists.length
times_appeared = 0
@@artists.each do |name|
times_appeared += 1 if name == self.artists[count]
end
artist_hash[self.artists[count]] = times_appeared
count += 1
end

end


end
