define ['backbone', 'app/models/meeting'], (Backbone, Meeting)->
  
  class Meetings extends Backbone.Collection
    
    initialize: (models, options)->
      @currentPage = 0

    model: Meeting 

    url: ->
      token = window.localStorage.getItem('userAccessToken')
      return window.App.apiHost + '/meetings?token=' + token

    parse: (response) ->
      response.data

