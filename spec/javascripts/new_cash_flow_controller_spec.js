//= require angular-mocks
describe('NewCashFlowCtrl', function() {
  var scopeObj;
  beforeEach(module('selectDemoBasic'));
  beforeEach(inject(function($controller){
    scopeObj = {};
    $controller('NewCashFlowCtrl', {$scope: scopeObj});
  }));
  it("sets income to an array with an object", function() {
    expect(scopeObj.incomes).toEqual([{}]);
  });
});
