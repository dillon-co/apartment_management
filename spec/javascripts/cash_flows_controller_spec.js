//= require angular-mocks
describe('CashFlowsCtrl', function(){
  var scopeObj;
  var cashFlowsService;
  var cashFlows;
  var deferred;
  var root;
  beforeEach(module('selectDemoBasic'));
  beforeEach(inject(function($controller, $q, $rootScope){
    root = $rootScope;
    scopeObj = {};
    deferred = $q.defer();
    cashFlows = [
      {id: 1, totalExpense: 1123, totalIncome: 131},
      {id: 2, totalExpense: 1141, totalIncome: 191}
     ];
    cashFlowsService = {
      all: function(){
        return deferred.promise;
      }
    };
    $controller('CashFlowsCtrl', {$scope: scopeObj, CashFlow: cashFlowsService});
  }));
  it("should get all cash flows", function(){
    deferred.resolve(cashFlows);
    root.$digest();
    expect(scopeObj.cashFlows).toEqual(cashFlows);
  });
});
