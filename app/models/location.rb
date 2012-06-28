class Location < ActiveRecord::Base
  attr_accessible :name, :area_id, :map

  belongs_to :area

  serialize :map, :using => JSON
end