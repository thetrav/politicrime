window.Management = {
  Views: {}
  Models: {}
  Collections: {}

  init: () ->
    Collections.squads = new Collections.Squads()
    Collections.squads.fetch(
      success: @squadsRetrieved
    )

    $('.app').append(Views.squad)

  squadsRetrieved: () ->
    Collections.people = new Collections.People()
    Collections.people.fetch(
      success: @peopleRetrieved
    )

  peopleRetrieved: () ->
    console.log("retrieved squads and people")
}