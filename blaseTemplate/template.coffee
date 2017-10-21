FlowRouter.route('/<%= Name %>',
  action: ({params}) ->
    BlazeLayout.render("default",
      content:"<%= Name %>"
    );
);

Template.<%= Name %>.onCreated(()->
)

Template.<%= Name %>.onRendered(()->
)

Template.<%= Name %>.onDestroyed(()->
)

Template.<%= Name %>.helpers
  "": ()->
    

Template.<%= Name %>.events
  "click ": (event, instance)->
    
