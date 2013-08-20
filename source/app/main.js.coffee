define (require, exports, module) ->
	 
	m = require("models/meeting")
	a = new m
	console.log a;
	
	app = require("app")
	console.log app.router
	app_router = require("router")
	app.router = app_router
	Backbone.history.start({ pushState: false, root: app.root }) 