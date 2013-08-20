define [
  'composite.view',
  'jquery' 
], (CompositeView, $)->
  
  class LoginView extends CompositeView

    id: 'login-view'

    initialize: (options)->
      template =" 
      <p>  
        <label for='email'>邮箱</label>
        <input name='email' type='text'/>
      </p>
      <p>
        <label for='password'>密码</label>
        <input name='password' type='password'/>
      </p>
      <p>
        <input id='login-view-submit' type='submit' value='登录'/>
      </p>"

      @$el.html template 
      @listenTo(@model, 'change', @changeCallback)
      _.bindAll(@, 'successCreate')

    events: {
      'click #login-view-submit': 'login'
    }

    login: ->
      email = @$el.find('input[name="email"]').val()
      password = @$el.find('input[name="password"]').val()
      loginData = {
        email: email,
        password: password
      }
      @model.save(
        loginData,
        {
          wait: true, 
          success: this.successCreate
        }
      ) 
    
    successCreate: (model, response, options)->
      statusCode = response.status.code
      if statusCode is 0
        $('#notice').empty()    
        window.App.router.navigate '', {trigger: true}
      if statusCode is 1 
        $('#notice').text(response.status.msg)
        
    changeCallback: ->
      if @model.attributes.status.code is 0
        user = @model.attributes.data
        window.App.router.menuView.removeLogoutMenu()
        window.App.router.menuView.removeLoggedMenu()
        window.App.router.menuView.appendLoggedMenu(user.email)
        window.localStorage.setItem('userAccessToken', user.access_token) 
        window.localStorage.setItem('userEmail', user.email) 
      @model.clear {silent: true}
