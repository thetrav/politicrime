CharacterCreation.Views.QuestionsView = Politicrime.Views.BaseView.extend(
  data:{}
  currentIndex: 0

  initialize: ->
    _.extend(this, @options)

  render: ->
    @firstQuestions = JST["backbone/character_creation/templates/first_questions"].call()
    @questionsHtml = []
    for question in @questions
      console.log("yo")
      @questionsHtml.push(JST["backbone/character_creation/templates/question"].call(question:question))
    @$modal = $("""
    <div class="modal hide fade">
      <div class="dialog-content"></div>
      <button class="btn-primary">Next</button>
    </div>
        """)
    @$el.append(@$modal)
    @$dialogContent = @$modal.find('.dialog-content')
    @$modal.on('shown', =>
      @$modal.unbind("shown")
      @$dialogContent.html(@firstQuestions)
      @$modal.find("input").first().focus()
    )
    @$modal.modal("show")
    @$modal.find(".btn-primary").click((e) => @firstNext(e))

  firstNext: (e) ->
    @data.first_name = @$modal.find("#first_name").val()
    @data.last_name = @$modal.find("#last_name").val()
    @data.sex = @$modal.find("#sex").val()
    @$modal.on('hidden', () =>
      @$modal.unbind("hidden")
      @showQuestion(0)
    )
    @$modal.modal("hide")

  showQuestion: (i) ->
    @currentIndex = i
    $(".dialog-content").html(@questionsHtml[@currentIndex])
    @$modal.find(".btn-primary").unbind("click")
    @$modal.on("shown", -> @$modal.unbind("shown"); @$model.find("input").first().focus())
    @$modal.modal("show")
    @$modal.find(".btn-primary").click((e) => @questionAnswered(e))

  questionAnswered: (e) ->
    question = @questions[@currentIndex].id
    answer = $("input[name=#{question}]:checked").val()
    @data["answer-#{question}"] = answer

    if @currentIndex == @questions.length-1
      @submitForm()
    else
      @nextQuestion()

  submitForm: ->
    $.post("character_creation/create", @data, (d) -> window.location = "game")

  nextQuestion: ->
    @$modal.on("hidden", => @$modal.unbind("hidden"); @showQuestion(@currentIndex+1))
    @$modal.modal("hide")
)