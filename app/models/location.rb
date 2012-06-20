class Location < ActiveRecord::Base
  attr_accessible :name, :area_id

  belongs_to :area
end