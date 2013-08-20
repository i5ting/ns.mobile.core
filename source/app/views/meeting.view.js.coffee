define ['composite.view', 
        'jquery', 
        'underscore'
], (CompositeView, $, _)->

  class MeetingView extends CompositeView
    
    tagName: 'ul'
    className: 'meeting-view'

    initialize: (options)->
      @template = " 
        <li><%= name %></li>
        <li><%= start_time %></li>
        <li><%= status %></li>"
 
    render: ->
      data = { 
        name: @model.get('name'), 
        start_time: @model.get('start_time'),
        status: @model.get('status')
      }
      compiled = _.template(@template, data)
      @$el.html(compiled)
      @
     
