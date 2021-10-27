# Solidity Notes

What is Solidity?

*Solidity is a programming language targeting Ethereum Virtual Machine (EVM).*

File Type = .sol

# VARIABLES

uint256 grade = 70;

* uint = unsigned integer

* 256 = 256 bits (represents length of the bits)

* grade = name of the variable


### Common solifity types
* address: Ethereum public address
* bytes32: 32-byte word
* bool: true or false
* uint256: refer above
* mapping: maps an element to another element


## Mapping

ex.) nested mapping > an integer > a string > boolean variable

`
mapping(uint256 => 
mapping(string => bool)
`

`
bool val = A[200][string]; true
`

# FUNCTIONS
Can manipulate variables and call other functions

ex.) 
startCar()
* startCar: name
* (): parameter
* onlyOwner: a modifier
* public: visibility of the function
* returns(bool success): the returned values

! The entire line is also known as the **Function signature**

### MODIFIERS

A function thats mostly used to check conditions

`
modifier onlyOwnerAccess [ require(msg.sender == owner, "UNAITH"); _; }
`
* onlyOwnerAccess: name of the modifier
* require: reverts the transaction if a defined condition is not met
* msg.sender == owner: the defined condition, in this case the caller being the owner of the contract
* "UNAUTH": the error message it should revert
* _;:

### MORE KEYWORDS
* pragma: defines Solidity compiler version
* view: built in modifier/ read only - doesn't write anything to the blockchain. Costs NO gas
* pure: means it is indepenedent to the blockchain
* abstract:
* overrride:
* event:
* Interface:


