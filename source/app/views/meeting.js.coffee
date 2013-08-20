define (require, exports, module) ->
	module.exports = class App1
	  constructor: (@name) ->
		  console.log @name
		  console.log "...init "
		  #$('body').html('dddd------'+@name);
	  ptest:(s)->
		   s
	  