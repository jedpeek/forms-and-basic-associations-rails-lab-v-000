class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    Artist.find_by_id(self.artist_id).name
  end

  def genre_name
    Genre.find_by_id(self.genre_id)
end
