define (require, exports, module) ->
  require('backbone')
    
  class Router extends Backbone.Router
    initialize: (options)->       
      #$('body').html("INIT")

    routes:{
      "": "index"
    }
      
    index:() -> 
      #alert(11);
      console.log "ddd"
      v = require("views/meeting")
      a = new v()
      # a.el='.page'
      a.render()
      @
            
  module.exports = new Router()