App.Views.TodosIndex = Backbone.View.extend({
  template: JST['todos/index'],
  el: '#todosBackbone',
  events: {
  },

  initialize: function(options){
    this.todos = new App.Collections.Todos
    this.todos.fetch()
    this.render()
  },

  render: function() {
    this.$el.html( this.todos.toJSON() )
  }
});


