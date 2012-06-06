class CharacterCreationController < ApplicationController
  def index
    @questions = StartingQuestion.includes(:starting_answers).all
  end

  def attribute (name, val)
    @leader.attributes << Attribute.create(:name => name, :value => val)
  end

  def create
    @leader = Person.create(:first_name => params[:first_name],
                            :last_name => params[:last_name],
                            :alias => params[:alias],
                            :male => params[:sex].eql?("A"),
                            :age => params[:age],
                            :leaning => 2)
    attribute(:heart, 8)
    attribute(:wisdom, 1)
    attribute(:intelligence, 3)
    attribute(:agility, 5)
    attribute(:strength, 4)
    attribute(:health, 6)
    attribute(:charisma, 4)

    StartingQuestion.includes(:starting_answers).each do |question|
      question.starting_answers.find(params["answer-#{question.id}"]).apply(@leader)
    end

    @leader.save!

  end
end