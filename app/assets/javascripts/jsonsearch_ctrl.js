(function() {
  "use strict";



  angular.module("app",['angularUtils.directives.dirPagination']).controller("JsonArticleCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/json/articles.json").then(function(response) {
        $scope.articles = response.data;
      });
      $scope.search = '';     // set the default search/filter term
    }

    window.scope = $scope;

  });

  angular.module("app").controller("JsonUserCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/json/users.json").then(function(response) {
        $scope.users = response.data;
      });
      $scope.search = '';     // set the default search/filter term
    }

    window.scope = $scope;
  });


}());
