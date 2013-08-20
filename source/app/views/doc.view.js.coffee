define ['composite.view', 
        'jquery' 
], (CompositeView,  $)-> 
  
  class DocView extends CompositeView
    
    initialize: (options)->
      template = ' 
        <div class="scroll-pane ui-widget ui-widget-header ui-corner-all">
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
          <div class="ui-widget-header"></div>
        </div>'
      @$el.html(scrollBarHtml)
