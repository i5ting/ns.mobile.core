define (require, exports, module) ->
	require("backbone")
	b = require("backbone")
	
	v = require("views/meeting")
	console.log "vvv"
	# console.log v
		
	router = Backbone.Router.extend(routes :
			"": "index",index:() -> 
		#alert(11);
		console.log "ddd")
		#a = new v("alfred.sang")
		
	module.exports = router 

# define([
#   // Application.
#   "app"
# ],
# 
# function(app) {
# 
#   // Defining the application router, you can attach sub routers here.
#   var Router = Backbone.Router.extend({
#     routes: {
#       "": "index"
#     },
# 
#     index: function() {
# 
#     }
#   });
# 
#   return Router;
# 
# });
