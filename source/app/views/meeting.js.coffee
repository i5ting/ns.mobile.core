define (require, exports, module) ->
    tpl = require("templates/hello")
    
    # require("backbone")
    # # tpl= JST["app/templates/enter"]
    #  
    # 
    # config =
    #     #template: _.template(tpl,'sang'),
    #     render:() ->
    #         alert 3
    #         $('body').html(this.template('this.model.attributes'));
    #         return this;
    #       
    # 
    # Bookmark = Backbone.View.extend(config);
    
    
    # module.exports = Bookmark
    module.exports = class App1
      constructor: (@name) ->
          console.log @name
          console.log "...init "
          $('body').html('dddd------'+@name);
      ptest:(s)->
           s
	  
      
# 
# var Bookmark = Backbone.View.extend({
#   template: _.template(tpl),
#   render: function() {
#     this.$el.html(this.template(this.model.attributes));
#     return this;
#   }
# });