// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-animate
//= require angular-aria
//= require angular-material
//= require_tree .

(function () {
  'use strict';
  // debugger
  var base = angular.module('selectDemoBasic', ['ngMaterial']);

  base.controller('CashFlowCtrl', ['$scope', 'CashFlow', function($scope, CashFlow) {
    var cash = CashFlow.find(1);
    cash.then(function(cashFlow){
      $scope.totalIncome = cashFlow.total_income;
      $scope.totalExpense = cashFlow.total_expense;
    });
  }]);

  base.controller('NewCashFlowCtrl', ['$scope', function($scope){
    $scope.incomes = [{}];
  }]);

  base.controller('CashFlowsCtrl', ['$scope', 'CashFlow', function($scope, CashFlow) {
    var cash = CashFlow.all();
    cash.then(function(cashFlows){
      $scope.cashFlows = cashFlows;
    });
  }]);

  base.factory('CashFlow', ['$http', function($http) {
    return {
      find: function(id){
        return $http.get('/cash_flows/'+id+'.json').then(function(response){
          return response.data.cash_flow;
        });
      },
      all: function(){
        return $http.get('/cash_flows.json').then(function(response){
          return response.data.cash_flows;
        });
      }
    };
  }]);




  angular.bootstrap(document.body, ['selectDemoBasic']);

})();
