define [
  'composite.view', 
  'jquery', 
  'app/views/meeting.view'
], (CompositeView, $, MeetingView)->
  
  class MeetingsView extends CompositeView

    id: 'meetings-view' 
    
    initialize: (options)->
      template = "<button type='button'>更多</button>" 
      @$el.html(template)
      @listenTo(@collection, 'reset', @render)

    fetchMeetings: ->
      @collection.fetch(
        wait: true, 
        reset: true, 
        data: {page: @current_page},
        success: @successCallBack
      )

    successCallBack: (collection, response, options)->
      statusCode = response.status.code
      window.App.router.navigate('/login', trigger: true) if statusCode is 100

    render: ->
      that = @ 
      @collection.each (model) ->
        meetingView = new MeetingView(model: model)
        that.prependChild(meetingView)
      @

