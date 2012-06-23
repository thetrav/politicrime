Management.Models.Squad = Politicrime.Models.Base.extend(
  name:"squad"

  people: ->
    Management.Collections.people.inSquad(@id)
)

Management.Collections.Squads = Backbone.Collection.extend(
  url: "/squads"
  model: Management.Models.Squad
)