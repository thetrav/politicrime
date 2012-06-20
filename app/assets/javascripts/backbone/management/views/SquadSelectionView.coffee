Politicrime.Views.SquadSelectionView = Politicrime.Views.BaseView.extend(
  initialize:() ->
    _.extend(this, @options)
    @render()

  render: () ->
    @$el.append(JST["templates/squads"].call(model:@model, view:this))
)