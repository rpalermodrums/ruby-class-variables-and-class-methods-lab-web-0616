class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_counts = {}
  @@artist_counts = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
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
    @@genres.each do |gen|
      @@genre_counts[gen] = @@genres.count(gen)
    end
    @@genre_counts
  end

  def self.artist_count
    @@artists.each do |art|
      @@artist_counts[art] = @@artists.count(art)
    end
    @@artist_counts
  end
end
