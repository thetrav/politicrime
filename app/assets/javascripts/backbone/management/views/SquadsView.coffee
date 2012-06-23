Management.Views.SquadsView = Politicrime.Views.BaseView.extend(
  initialize:() ->
    _.extend(this, @options)

  render: () ->
    _.each(@model.models,
      (squad) =>
        @$el.append(JST["backbone/management/templates/squad"].call(model:squad, view:this))
    )
)