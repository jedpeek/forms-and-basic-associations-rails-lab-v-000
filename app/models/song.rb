class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    Artist.find_or_create_by(name: :artist_name)
  end

  def genre_name
    Genre.find_or_create_by(name: :genre_name])
  end
end
