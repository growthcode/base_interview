App.Routers.BaseRouter = Backbone.Router.extend({
  routes: {
    '' : 'rootPath',
    '/' : 'rootPath',
  },

  rootPath: function(params) {
    new App.Views.ToDosIndex
  },
});
