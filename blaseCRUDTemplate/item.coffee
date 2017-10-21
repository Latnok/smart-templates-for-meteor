FlowRouter.route('/<%= Name %>/add',
  action: ({params}) ->
    BlazeLayout.render("default",
      content:"<%= Name %>Item"
    );
);
FlowRouter.route('/<%= Name %>/item/:<%= Name %>ItemId',
  action: ({params}) ->
    BlazeLayout.render("default",
      content:"<%= Name %>Item"
    );
);

Template.<%= Name %>Item.onCreated(()->
  if FlowRouter.getParam("<%= Name %>ItemId")?
    @subscribe "<%= Name %>Item", FlowRouter.getParam("<%= Name %>ItemId")
)

Template.<%= Name %>Item.onRendered(()->
)

Template.<%= Name %>Item.onDestroyed(()->
)

Template.<%= Name %>Item.helpers
  collection: ()->
    db.<%= Name %>
  doc: ()->
    db.<%= Name %>.findOne(FlowRouter.getParam("<%= Name %>ItemId"))

Template.<%= Name %>Item.events
  "click ": (event, instance)->
