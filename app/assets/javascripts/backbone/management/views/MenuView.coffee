Management.Views.MenuView = Politicrime.Views.BaseView.extend(
  items: [
    "wait a day" : @wait
  ]

  initialize: ->


  render: ->
    itemsHtml = _.map(@items,
      (item) -> JST["backbone/management/templates/menu_item"].call(item: _.keys(item)[0], view:this)).join("")
    html = """
        <h1>Menu</h1>
        <ul class="menu">#{itemsHtml}</ul>
    """
    @$el.html(html)

  wait: ->
    console.log("totes waiting")
)