
define (require, exports, module) ->
    tpl = require("templates/hello")
    
    console.log Backbone
		
    require("backbone");
    
    require('jquery')
	  # render: function () {
  #       this.$el.html(contactPageTemplate);
  #   }
     
    MeetingView = Backbone.View.extend
      # constructor: (@name) ->
      #     console.log @name
      #     console.log "...init "
      #     $('body').html('dddd------'+@name+"<div class='page'>ss</div>");
      #     @
      id: 'login-view'
      el: $('.page')
      render: -> 
        $('body').html('dddd------'+"<div id='login_view'>ss</div>");
        console.log "rendering..."
        @$el.html "contactPageTemplate"
        @
        
 
    # module.exports = Bookmark
    module.exports = MeetingView	  
      
# 
# var Bookmark = Backbone.View.extend({
#   template: _.template(tpl),
#   render: function() {
#     this.$el.html(this.template(this.model.attributes));
#     return this;
#   }
# });

# define (require, exports, module) ->
#     tpl = require("templates/hello")
#     
#     console.log Backbone
#     
#     require("backbone");
#     
#     require('jquery')
#     # render: function () {
#   #       this.$el.html(contactPageTemplate);
#   #   }
#     
#     class MeetingView extends Backbone.View
#       constructor: (@name) ->
#           console.log @name
#           console.log "...init "
#           $('body').html('dddd------'+@name+"<div class='page'>ss</div>");
#       ptest:(s)->
#            s
# 
#       el:'.page'
#       
#       render: -> 
#         console.log "rendering..."
#         @$el.html "contactPageTemplate"
#         @
#         
#  
# 
#     _.extend(MeetingView.prototype, Backbone.View)
#       
#     # module.exports = Bookmark
#     module.exports = MeetingView
#     
#       
# # 
# # var Bookmark = Backbone.View.extend({
# #   template: _.template(tpl),
# #   render: function() {
# #     this.$el.html(this.template(this.model.attributes));
# #     return this;
# #   }
# # });