class StartingQuestion < ActiveRecord::Base
  attr_accessible :question

  has_many :starting_answers

  def answer(label, &mods)
    a = StartingAnswer.new(:label => label, :mods => {})
    a.instance_eval &mods
    starting_answers << a
  end
end