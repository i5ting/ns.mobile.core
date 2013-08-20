Application.Views.Meetings ||= {}

class Application.Views.Meetings.EnterView extends Backbone.View
  template: JST["app/templates/meetings/enter"]

  render: ->
    
    $('#page_no').html 'Page ' + @model.cur_page
    
    @$el.html @template
      doc: @model
    this




