//= require angular-mocks
describe('CashFlowCtrl', function(){
  var scopeObj;
  var cashFlowService;
  var cash;
  var deferred;
  var root;
  beforeEach(module('selectDemoBasic'));
  beforeEach(inject(function($controller, $q, $rootScope){
    deferred = $q.defer();
    scopeObj = {};
    root = $rootScope;
    cash = {total_income: 123, total_expense: 321};
    cashFlowService = {
      find: function(){
        return deferred.promise;
      }
    };
    $controller('CashFlowCtrl', {$scope: scopeObj, CashFlow: cashFlowService});
  }));

  it('should get cashFlow incomes and expenses', function(){
    deferred.resolve(cash);
    root.$digest();
    expect(scopeObj.totalIncome).toEqual(cash.total_income);
    expect(scopeObj.totalExpense).toEqual(cash.total_expense);
  });
});
