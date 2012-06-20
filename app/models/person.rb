class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :alias, :male, :age, :leaning

  belongs_to :squad

  has_many :stats
  has_many :skills

  def skill(name)
    it = skills.find_by_name(name)
    it.nil? ? 0 : it.value
  end
end