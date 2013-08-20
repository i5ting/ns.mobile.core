define [
  'composite.view',
  'jquery' 
], (CompositeView, $) ->
  
  class MenuView extends CompositeView 
    
    id: 'menu-view' 

    initialize: (options)->
      template = "
        <ul>
          <li id='menu-view-meetings'>会议列表</li>
          <li id='menu-view-new-meeting'>新建会议</li>
          <li>我的会议</li>
        </ul>"
      @loggedMenuHtml = " 
        <li id='menu-view-email'><%= email %></li> 
        <li id='menu-view-logout'>退出</li>"

      @logoutMenuHtml = "
        <li id='menu-view-login'>登录</li> 
        <li id='menu-view-register'>注册</li>"
      @$el.html(template)

      accessToken = window.localStorage.getItem('userAccessToken')
      email = window.localStorage.getItem('userEmail')
      if accessToken && email 
        @appendLoggedMenu(email)
      else
        @appendLogoutMenu()
        
    events: {
      'click #menu-view-login': 'navLogin',
      'click #menu-view-logout': 'logout',
      'click #menu-view-register': 'navRegister',
      'click #menu-view-meetings': 'navMeetings',
      'click #menu-view-new-meeting': 'navNewMeeting'

    }
 
    navLogin: ->
      window.App.router.navigate '/login', {trigger: true}
     
    logout: ->
      @removeLoggedMenu()
      @appendLogoutMenu()
      window.localStorage.removeItem('userAccessToken')
      window.localStorage.removeItem('userEmail')

    navRegister: ->
      window.App.router.navigate '/register', {trigger: true}

    navMeetings: ->
      window.App.router.navigate '', {trigger: true}

    navNewMeeting: ->
      window.App.router.navigate '/meetings/new', {trigger: true}

    appendLoggedMenu: (email)->
      @$el.find('ul').append(
        _.template(@loggedMenuHtml, {email: email})
      )

    appendLogoutMenu: ->
      @$el.find('ul').append(@logoutMenuHtml)

    removeLoggedMenu: ->
      @$el.find('#menu-view-email').remove()
      @$el.find('#menu-view-logout').remove()

    removeLogoutMenu: ->
      @$el.find('#menu-view-login').remove()
      @$el.find('#menu-view-register').remove()


