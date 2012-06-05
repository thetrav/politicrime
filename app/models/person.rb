class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :alias, :male, :age, :leaning

  def self.generate(leaning, occupation_id)
    Person.new(:occupation_id => occupation_id, :leaning => leaning)
  end

  has_many :attributes
  has_many :skills

  def skill(name)
    it = skills.find_by_name(name)
    it.nil? ? 0 : it.value
  end
end