class Application.Routers.MeetngsRouter extends Backbone.Router

  initialize: (options) ->
    # @meetings = new Application.Collections.Meetings
    # @meetings.fetch
    #   success: (collection) ->
    #     console.log collection.toJSON()

  routes:
    ""             : "home"
    ":id/enter"    : "enter"
  
  home: ->
    'home page'

  enter: (id) ->
    
    window.MeetingId = id
    $.ajax
      url: ApiServer + '/meetings/'+ id + '/enter' + window.tokenParam
      type: 'get'
      success: (result) =>
        @meeting = result.data.meeting
        @doc = result.data.doc
        @user = result.data.user
        $("#presenter .user").html @user.email
 
        window.Channel = '/docs/' + @doc.id + '/slide'
        window.isPresenting = result.data.presenter
        window.DocId = @doc.id
        canvas_sync.hideModal() if window.isPresenting
        
        @enter_doc(@doc)
    
  enter_doc: (doc) ->
    window.faye = new Faye.Client(FayeServer)
    faye.subscribe Channel,
      (data) ->
        if !isPresenting and data.position
          canvas_draw.draw(data.position, data.dtype, data.draw_style)
          if data.dtype is 'prev' or data.dtype is 'next'
            canvas_sync.sync_page('/docs/' + DocId + '/slide?from=faye')
        if data.dtype is 'clear'
          canvas_draw.clear()
        if data.dtype is 'clearHistory'
          canvas_draw.clearHistory()
        if data.user_id and data.user_id != CurrentUserId
          canvas_sync.offPresenter()
        if data.dtype is 'apply_presenter' and isPresenting
          alert 'somebody apply presenter'          

    @view = new Application.Views.Meetings.EnterView model: @doc
    $("#cpngs").html(@view.render().el)

    
