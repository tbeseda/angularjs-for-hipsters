window.TodoCtrl = ($scope) ->
  $scope.todos = [
    {text: 'find a centipede', done: true}
    {text: 'make a bonfire', done: false}
    {text: 'go to rage valley', done: false}
  ]

  $scope.addTodo = ->
    $scope.todos.push
      text: $scope.todoText
      done: false
    $scope.todoText = ''

  $scope.remaining = ->
    count = 0
    for todo in $scope.todos
      count++ unless todo.done
    count

  $scope.archive = ->
    oldTodos = $scope.todos
    $scope.todos = []
    for todo in oldTodos
      $scope.todos.push(todo) unless todo.done
