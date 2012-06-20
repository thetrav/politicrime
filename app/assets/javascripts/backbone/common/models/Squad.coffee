Politicrime.Models.Squad = Politicrime.Models.Base.extend(
  initialize:() ->
    @name = "squad"
)

Politicrime.Collections.Squads = Backbone.Collection.extend(
  model: Politicrime.Models.Squad
  url: '/squads'
)