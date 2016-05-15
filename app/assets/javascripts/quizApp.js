/* global angular */
(function() {
  angular.module("app").controller("quizApp", function($scope, $http) {
    
    $scope.start = function() {
      $scope.id = 0;
      $scope.quizOver = false;
      $scope.inProgress = true;
      $scope.getQuestion();
    };

    $scope.reset = function() {
      $scope.inProgress = false;
      $scope.score = 0;
    };

    $scope.setup = function() {
      $http.get('/api/v1/quizapps.json').then(function(response) {
        console.log(response.data);
        $scope.issues = response.data;
      });
    };

    $scope.submitQuiz = function() {
      console.log($scope.issues);
      var params = {
        issues: $scope.issues
      };
      $http.post('/api/v1/quizapps.json', params).then(function(response) {
        console.log(response);
      });
    };

  });
})();

    