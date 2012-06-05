window.CharacterCreation = {
  init:() ->
    $(".answer").hover((e) ->
      $(e.currentTarget).toggleClass("hover")
    )
    $(".answer").click((e) ->
      el = $(e.currentTarget)
      el.parent().find(".answer").removeClass("selected")
      el.addClass("selected")
      q = el.data("question")
      val = el.data("answer")
      $("#answer-#{q}").val(val)
    )
}