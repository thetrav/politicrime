CharacterCreation.Views.QuestionsView = Politicrime.Views.BaseView.extend(
  initialize: () ->
    _.extend(this, @options)

  render: ->
    @firstQuestionsHtml = JST["backbone/character_creation/templates/first_questions"].call()
    @questionsHtml = []
    for question in @questions
      @questionsHtml.push(JST["backbone/character_creation/templates/question"].call(question:question))
    @$modal = $("""
    <div class="modal">
      <div class="dialog-content"></div>
      <button class="btn-primary">Next</button>
    </div>
        """)
    @$el.append(@$modal)
    @$modal.on('shown', () => @$modal.find('.dialog-content').html(@firstQuestionsHtml))
    @$modal.modal("show")
)