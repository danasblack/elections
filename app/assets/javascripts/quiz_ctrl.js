/* global angular */
(function() {
  angular.module("app").controller("quizCtrl", function($scope, $http) {
    $scope.message = "Find Your Candidate";

    $scope.questions = [

      "Enforce against wage discrimination based on gender",
      "ENDA: prohibit employment discrimination for gays",
      "NO on allowing school prayer during the War on Terror",
      "Make tax deduction permanent for conservation easements"
    ];

    $scope.options = [
      "Strongly Favor",
      "Favor",
      "Oppose",
      "Strongly Oppose"
    ];
    window.$scope = $scope;
  });
})();