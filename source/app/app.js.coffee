define (require, exports, module) ->
	b = require("backbone")

	manage = require("backbone.layoutmanager")
	app = 
	    # The root path to run the application.
	    root: "/"

	JST = window.JST = window.JST || {};

	bl_config = 
	    # Allow LayoutManager to augment Backbone.View.prototype.
	    manage: true
	    prefix: "app/templates/"
	    fetch: (path) ->
	      	# Concatenate the file extension.
	      	path = path + ".html";
	       return JST[path] if JST[path]?
	        done = this.async()

    console.log bl_config 
	#Configure LayoutManager with Backbone Boilerplate defaults.
	manage.configure(bl_config);


	app_ext = 
	    # Create a custom object with a nested Views object.
	    module:(additionalProps) ->
	        _.extend({ Views: {} }, additionalProps)
	    useLayout:(name, options) ->
	        options = name if _.isObject(name)
	        options = options || {}
	        options.template = name if _.isString(name)
	        layout = new Backbone.Layout(_.extend({el: "#main"}, options))
	        this.layout = layout

	_.extend(app, Backbone.Events)
	
	module.exports = app
