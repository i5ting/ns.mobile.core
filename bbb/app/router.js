define([
  // Application.
  "app","view"
],

function(app,view) {

  // Defining the application router, you can attach sub routers here.
  var Router = Backbone.Router.extend({
    routes: {
      "": "index"
    },

    index: function() {
        // alert(12);
        var a = new view();
        a.render();
    }
  });

  return Router;

});
