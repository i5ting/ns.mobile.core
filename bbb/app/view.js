define([
  // Application.
  "app"
],

function(app) {

  // Defining the application router, you can attach sub routers here.
  var Router = Backbone.View.extend({
    el: 'body',
    render: function() {
        this.$el.html("ddd");
    }
  });

  return Router;

});
