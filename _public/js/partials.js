angular.module('partials', [])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/nav.html', [
'',
'<ul class="nav">',
'  <li ng-class="getClass(\'/todo\')"><a ng-href="#/todo">todo</a></li>',
'  <li ng-class="getClass(\'/view1\')"><a ng-href="#/view1">view1</a></li>',
'  <li ng-class="getClass(\'/view2\')"><a ng-href="#/view2">view2</a></li>',
'</ul>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/partial1.html', [
'',
'<p>This is the partial for view 1.</p>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/partial2.html', [
'',
'<p>This is the partial for view 2.</p>',
'<p>',
'  Showing of \'interpolate\' filter:',
'  {{ \'Current version is v%VERSION%.\' | interpolate }}',
'</p>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/todo.html', [
'',
'<div ng-app="ng-app">',
'  <h2>Todo</h2>',
'  <div ng-controller="TodoCtrl"><span>{{remaining()}} of {{todos.length}} remaining</span> [<a href="" ng-click="archive()">archive</a>]',
'    <ul class="unstyled">',
'      <li ng-repeat="todo in todos">',
'        <label class="checkbox inline">',
'          <input type="checkbox" ng-model="todo.done"><span class="done{{todo.done}}">{{todo.text}}</span>',
'        </label>',
'      </li>',
'    </ul>',
'    <form ng-submit="addTodo()" class="form-inline">',
'      <p>',
'        <input type="text" ng-model="todoText" size="30" placeholder="add new todo here">',
'        <input type="submit" value="add" class="btn btn-primary">',
'      </p>',
'    </form>',
'  </div>',
'</div>',''].join("\n"));
}]);