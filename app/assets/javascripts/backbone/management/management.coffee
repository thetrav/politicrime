window.Management = {
  Views: {}
  Models: {}
  Collections: {}

  init: () ->
    Management.Collections.squads = new Management.Collections.Squads()
    Management.Collections.squads.fetch(
      success: () => @squadsRetrieved()
    )

  squadsRetrieved: () ->
    Management.Collections.people = new Management.Collections.People()
    Management.Collections.people.fetch(
      success: => @peopleRetrieved()
    )

  peopleRetrieved: () ->
    Management.Views.squadsView = new Management.Views.SquadsView(model:Management.Collections.squads)
    Management.Views.squadsView.render()
    $('.app').append(Management.Views.squadsView.$el)
}