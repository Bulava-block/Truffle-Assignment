pragma solidity 0.5.12;

  import "./Ownable.sol";
 
contract ERC20 is Ownable {
    
    // Address will point at  the balance
    mapping (address => uint256) private _balances;
    
    // declarin the variable that will be used in future functions
    uint256 private _totalSupply;

    string private _name;
    string private _symbol;
    uint8 private _decimals;

        // the constructor that will execute at the start 
    constructor (string memory name, string memory symbol) public {
        _name = name;
        _symbol = symbol;
        _decimals = 18;
    }

    // this creates a name
    function name() public view returns (string memory) {
        
        return _name;

    }
     // this creates a symbosl
    function symbol() public view returns (string memory) {
        return _symbol;

    }
     //this shows decimals
    function decimals() public view returns (uint8) {
        
         return _decimals;
    }
     // this returns totalsupply of tokens in this contract 
    function totalSupply() public view returns (uint256) {
        
        return _totalSupply;
    }
    //this returns the balance of the user
    function balanceOf(address account) public view returns (uint256) {
        
        return _balances[account];

    }
      //this creates tokens
    function mint(address account, uint256 amount) public onlyOwner {
        
        _totalSupply=_totalSupply+ amount;
        _balances[account]=_balances[account]+amount;
        
    }
      // this reduces the balance of the person and sends this amount to the other person by increasing the balance of the reciever.
    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(_balances[msg.sender]>=amount);
        
        _balances[msg.sender]=_balances[msg.sender] - amount;
        _balances[recipient]=_balances[recipient] + amount;
       
        
        return true;

    }

}