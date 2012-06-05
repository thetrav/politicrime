class CharacterCreationController < ApplicationController
  def index
    @questions = StartingQuestion.all
  end

  def create
    puts "creating leader"
  end
end