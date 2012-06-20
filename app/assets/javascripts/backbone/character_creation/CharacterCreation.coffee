window.CharacterCreation = {
  Views: {}

  init:() ->
    view = new CharacterCreation.Views.QuestionsView(questions: CharacterCreation.bootstrapData)
    view.render()
    $('body').append(view.el)
}