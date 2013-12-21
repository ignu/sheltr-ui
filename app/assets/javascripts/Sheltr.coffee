app = angular.module("Sheltr", ['ngResource', 'leaflet-directive'])

app.factory('Services', ['$resource', ($resource) ->
  $resource '/services.json', null, 'index': { method:'GET' }
])

app.controller "ServicesCntl", ['$scope', 'Services', (($scope, Services) ->

  services = Services.query ->
    markers = _.map services, (service) ->
        lat: service.coordinates[1]
        lng: service.coordinates[0]
        message: service.name

    angular.extend $scope,
      center:
        lat: services[5].coordinates[1]
        lng: services[5].coordinates[0]
        zoom: 13
      defaults:
        scrollWheelZoom: false
      markers: markers


  $scope.services = services
  window.services = services

  angular.extend $scope,
    center:
      lat: 39.9524206
      lng: -75.1468956
      zoom: 11
    markers: {}
    defaults:
      scrollWheelZoom: false


)]
