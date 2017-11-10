App.Routers.BaseRouter = Backbone.Router.extend({
  routes: {
    '' : 'rootPath',
    '/' : 'rootPath',
    'todos' : 'rootPath',
    'todos/' : 'rootPath',
  },

  rootPath: function(params) {
    new App.Views.TodosIndex
  },
});
