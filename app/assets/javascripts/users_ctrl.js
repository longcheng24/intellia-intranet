(function() {
  "use strict";

  angular.module("app").controller("usersCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/users.json").then(function(response) {
        $scope.users = response.data;
      });

      $scope.sortType     = 'make'; // set the default sort type
      $scope.sortReverse  = false;  // set the default sort order
      $scope.search = '';     // set the default search/filter term

    }

    window.scope = $scope;
  });

}());
