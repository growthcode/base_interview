App.Views.PagesIndex = Backbone.View.extend({
  // template: '',
  el: '#pagesBackbone',
  events: {
  },

  initialize: function(options){
    this.pages = new App.Collections.Pages
    this.pages.fetch()
    this.render()
  },

  render: function() {
    this.$el.html( this.pages.toJSON() )
  }
});
