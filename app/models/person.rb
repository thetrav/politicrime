class Person < ActiveRecord::Base
  def self.generate(leaning, occupation_id)
    Person.new(:occupation_id => occupation_id, :leaning => leaning)
  end

end