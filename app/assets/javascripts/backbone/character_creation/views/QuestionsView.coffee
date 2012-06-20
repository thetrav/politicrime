CharacterCreation.Views.QuestionsView = Politicrime.Views.BaseView.extend(
  initialize: () ->
    _.extend(this, @options)

  render: ->
    @$el.html(JST["backbone/character_creation/templates/first_questions"].call())
    for question in @questions
      @$el.append(JST["backbone/character_creation/templates/question"].call(question:question))
)