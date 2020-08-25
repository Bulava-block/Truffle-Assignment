const ERC20 = artifacts.require("ERC20");
contract("ERC20", function(accounts) {
    it("should put 100 Eth in the selected account account", async function(){

        // return ERC20.deployed().then(function(instance){
        //     return instance.balance.call("0xa4E44B6857F07b4d94c5c9bb38a627b33B502F6A");
        // }).then(function(balance){
        //     assert.equal(_balances.valueOf, 100, "there is a mistake");
        // });
       let instance=   await ERC20.deployed();
       let balance = await instance.balanceOf("0xd1F11f1F7DCb8d404801713b2603653Cf97b4f21");

       assert.equal(balance, 100, "Everytrhing works");

        
    });
});    