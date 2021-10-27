# Solidity BuildNite

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
* startCar: name
* (): parameter
* onlyOwner: a modifier
* public: visibility of the function
* returns(bool success): the returned values

! The entire line is also known as the **Function signature**
