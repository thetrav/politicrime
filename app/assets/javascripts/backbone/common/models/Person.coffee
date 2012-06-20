Politicrime.Models.Person = Politicrime.Models.Base.extend(
  initialize:() ->
    @name = "person"

  url: () ->
    base = "people"
    if @isNew()
      base
    else
      "#{base}/#{@id}"
)

Politicrime.Collections.People = Backbone.Collection.extend(
  model: Politicrime.Models.Person
  url: '/people'
)