class StartingAnswer < ActiveRecord::Base
  attr_accessible :label, :mods
  serialize :mods

  belongs_to :starting_question

  def mod(type, key, value)
    mods[type] = {} if mods[type].nil?
    mods[type][key] = value
  end

  def apply(person)
    attributes = mods[:attribute]
    attributes ||= {}
    attributes.each_pair do |k,v|
      person.attributes.find_by_name(k).value += v
    end

    skills = mods[:skill]
    skills ||= {}
    skills.each_pair do |k,v|
      skill = person.skills.find_by_name(k)
      if skill.nil?
        skill = Skill.create(:name => k, :value => v)
        person.skills << skill
      else
        skill.value += v
      end
    end
  end

end