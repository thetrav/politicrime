Management.Models.Person = Politicrime.Models.Base.extend(
  name: "person"

)

Management.Collections.People = Backbone.Collection.extend(
  url: "/people"
  model: Management.Models.Person

  inSquad: (squadId) -> @select((p) -> p.get("squad_id") == squadId)
)