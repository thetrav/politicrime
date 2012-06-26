window.Management = {
  Views: {}
  Models: {}
  Collections: {}

  init: ->
    Management.Collections.squads = new Management.Collections.Squads()
    Management.Collections.squads.fetch(
      success: () => @squadsRetrieved()
    )

  squadsRetrieved: ->
    Management.Collections.people = new Management.Collections.People()
    Management.Collections.people.fetch(
      success: => @peopleRetrieved()
    )

  peopleRetrieved: ->
    @addView(new Management.Views.SquadsView(model:Management.Collections.squads))
    @addView(new Management.Views.MenuView())

  addView: (view) ->
    view.render()
    $('.app').append(view.$el)
}