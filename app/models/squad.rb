class Squad < ActiveRecord::Base
  attr_accessible :name

  has_many :people
end