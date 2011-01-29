Batman.onready(function() {

  Dungeon = Batman.App();

  Dungeon.Quest = Batman.Model({
    title: $binding(''),
    description: $binding(''),
    reward: $binding(''),
    minimumDataPoints: $binding(''),
    tags: $binding(''),
    expiration: $binding('')
  });

  Dungeon.DataPoint = Batman.Model({
    quest: $binding(''),
    message: $binding(''),
    longlat: $binding('')
  });

  Dungeon.User = Batman.Model({
    username: $binding(''),
    title: $binding(''),
    experience: $binding('')
  });


  // CONTROLLERS
  //

  Dungeon.QuestController = Batman.Controller({
    get: function(id) {
      // call the backend Model
    },

    add: function(title, desc, reward, minPoints, tags, expiry) {
      Dungeon.Quest({title: title, description: desc, reward: reward, minimumDataPoints: minPoints, tags: tags, expiration: expiry});

      // goto next screen -> show quest screen
    }
  });
  /*
  Dungeon.TodosController = Batman.Controller({
    add: function(text, node) {
           Dungeon.Todo({body: text});

           node.value = '';
           node.blur();
         }
  });

  */
  //Dungeon.Todo({body: 'riddler sent riemann hypothesis'});
  Dungeon.run();

});
