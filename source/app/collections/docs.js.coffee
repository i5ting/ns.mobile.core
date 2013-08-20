class App.Collections.Docs extends Backbone.Collection

  model: App.Models.Doc
  url: ApiServer + '/docs'
