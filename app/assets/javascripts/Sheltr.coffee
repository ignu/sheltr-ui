app = angular.module("Sheltr", ['ngResource'])

app.factory('Services', ['$resource', ($resource) ->
  $resource '/services.json', null, 'index': { method:'GET' }
])

app.controller "ServicesCntl", ($scope, Services) ->
  services = Services.query()

  $scope.services = services
  window.services = services
