# Got an object? Want to dynamically add more methods to it?
#
# hello.mixins.mix this, with:
#   someNewMethod: -> #thatDoesStuff
#
# And now "this" will have someNewMethod and it will be _.bind'ed to this.
# we want to abstract away "extend", because it's conflated with _.extend and Coffee's "extends"

# root = this
# root.def = _(extend).wrap (ex, args...) ->
#   [namespace, target] = args
#   unless typeof(target) is "object"
#     target.prototype.namespacePath = namespace
#   ex.apply(this, args)


define (require, exports, module) ->
	module.exports = class Mix
	  constructor: (@name) ->
		  console.log @name
		  console.log "...Mix init "