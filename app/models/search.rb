class Search < ActiveRecord::Base
  attr_accessible :term
  has_many :gifs

  after_create :find_and_create_gifs


  def find_and_create_gifs
  	gi = GifImporter.new(:term => term, :search_id => id)
  	gi.import
  end
end
