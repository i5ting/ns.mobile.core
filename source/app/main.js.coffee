# # define (require, exports, module) ->
#   $(document).ready ->
#     app = require("app")
#     console.log app.router
#     app_router = require("router")
#     app.router = app_router
#     Backbone.history.start({ pushState: false, root: app.root }) 

require ['config','jquery', 
         'backbone',
         'router','app'
        ],
(c,$, Backbone, Router,app) ->
  
  $(document).ready ->
    # app = require("app")
    console.log app.router
    app_router = require("router")
    app.router = app_router
    Backbone.history.start({ pushState: false, root: app.root }) 
   
       