class Skill < ActiveRecord::Base
  attr_accessible :name, :value

  belongs_to :person
end