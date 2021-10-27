// define solidity version
// always at the top
pragma solidity ^0.8.0;

// define contract
contract DebtTracker {
    // 3 pieces of info:
    // -Lender
    // -Borrower
    // -Amount Owed
    // Lender => Borrower => Amount
    mapping(address => mapping(address => uint256)) public debtMapping; // after this is called, all values are set at default
    // debtMapping = name of the variable
    // Function 1: Get amount owed, given Lender and Borrower
    // caller has to supply the lender and borrower within the parameters
    function getAmountOwed(address lender, address borrower) external view returns (uint256) {
        return debtMapping[lender][borrower];
    }
    // Function 2: Adds debt to Borrower as Lender
    function addDebt(address borrower, uint256 amount) external returns (uint256){
        // uint256 debt = debtMapping[msg.sender][borrower];
        // uint256 newDebt = debt + amount;
        // debtMapping[msg.sender][borrower] = newDebt;
        
        debtMapping[msg.sender][borrower] += amount;
        
        return debtMapping[msg.sender][borrower];
    }
    // Function 3: remove debt as Borrower
    function removeDebt(address borrower, uint256 amount) external returns (uint256) {
        debtMapping[msg.sender][borrower] -= amount;
        return debtMapping[msg.sender][borrower];
    }
    
        
    
}
