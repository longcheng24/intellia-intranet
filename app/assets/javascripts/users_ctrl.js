(function() {
  "use strict";

  angular.module("app").controller("usersCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/users.json").then(function(response) {
        $scope.users = response.data;
      });
      $scope.search = '';     // set the default search/filter term
    }

    window.scope = $scope;
  });

}());
