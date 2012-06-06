class StartingAnswer < ActiveRecord::Base
  attr_accessible :label, :mods
  serialize :mods

  belongs_to :starting_question

  def mod(type, key, value)
    mods[type] = {} if mods[type].nil?
    mods[type][key] = value
  end

end