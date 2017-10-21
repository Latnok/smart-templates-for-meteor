FlowRouter.route('/<%= Name %>/',
  action: ({params}) ->
    BlazeLayout.render("default",
      content:"<%= Name %>List"
    );
);

FlowRouter.route('/<%= Name %>',
  action: ({params}) ->
    BlazeLayout.render("default",
      content:"<%= Name %>List"
    );
);

Template.<%= Name %>List.onCreated(()->
  @subscribe "<%= Name %>List"
)

Template.<%= Name %>List.onRendered(()->
)

Template.<%= Name %>List.onDestroyed(()->
)

Template.<%= Name %>List.helpers
  list: ()->
    db.<%= Name %>.find()
  settings: ()->
    {
      rowsPerPage: 50
      showFilter: false
      showRowCount:true
      showNavigation:"auto"
      rowClass:"item"
      fields: [
        {key:"title", label:"Title"},
        {key:"updatedAt", label:"Updated"}
      ]
    }

Template.<%= Name %>List.events
  "click .item": (event, instance)->
    FlowRouter.go("/<%= Name %>/item/"+@_id);
