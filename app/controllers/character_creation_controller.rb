class CharacterCreationController < ApplicationController
  def index
    @questions = StartingQuestion.includes(:starting_answers).all
  end

  def stat (name, val)
    @leader.stats << Stat.create(:name => name, :value => val)
  end

  def create
    @leader = Person.create(:first_name => params[:first_name],
                            :last_name => params[:last_name],
                            :alias => params[:alias],
                            :male => params[:sex].eql?("A"),
                            :age => params[:age],
                            :leaning => 2)
    stat(:heart, 8)
    stat(:wisdom, 1)
    stat(:intelligence, 3)
    stat(:agility, 5)
    stat(:strength, 4)
    stat(:health, 6)
    stat(:charisma, 4)

    StartingQuestion.includes(:starting_answers).each do |question|
      question.starting_answers.find(params["answer-#{question.id}"]).apply(@leader)
    end

    @leader.squad = Squad.create(:name => "Liberal Crime Squad")

  end

  def show
    puts "player #{params[:id]}"
  end
end