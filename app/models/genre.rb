class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    self.artists.map do |artist|
      artist.name 
    end
    # return an array of strings containing every musician's name
  end
end

# instead of map can use a pluck method
# self.artists.pluck(:name)
