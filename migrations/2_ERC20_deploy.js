const ERC20 = artifacts.require("ERC20");

module.exports = function(deployer) {
  deployer.deploy(ERC20, "Stas", "ETH").then(function(instance){
    instance.mint("0xd1F11f1F7DCb8d404801713b2603653Cf97b4f21", 100).then(function(){
      console.log("Zaebis");
    });
  });
};


