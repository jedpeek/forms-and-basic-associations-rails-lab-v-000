class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    Artist.find_or_create_by(name: params[:song][:artist_name])
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_name=(name)
    Genre.find_or_create_by(name: params[:song][:genre_name])
  end

  def genre_name
    Genre.find_or_create_by(name: params[:song][:genre_name])
  end
end
