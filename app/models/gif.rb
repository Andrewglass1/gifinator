class Gif < ActiveRecord::Base
  attr_accessible :name, :url, :search_id
  belongs_to :search
end
