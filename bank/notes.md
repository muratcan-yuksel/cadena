## Variables

Solidity has local, state, and global variables. State variables are stored on the blockchain and `will cost gas`. Local variables are stored temporarily in memory and not saved. They're typically used in functions.

## Mappings

Mappings are like Objects in JavaScript, Dictionaries in Python, and Hashes in Ruby. `They're always stored in storage, even if they're inside functions, because they're state variables.` They aren't iterable but offer faster look up times than arrays.

sol => mapping(address => uint) public myMap;
js => let myMap= {address:uint} (I guess)

### msg.sender

msg.sender is a global variable that stores the address of the account that initiates a transaction

## functions

Setter functions change the value of our state variables and cost gas. Getter functions allow us to get the return value of our state variable.

# visibility specifiers

public => Everyone can access
private => Can be accessed only from within this contract
internal => Only this contract and contracts deriving from it can access
external => Cannot be accessed internally, only externally (saves gas)

## require

Let's move on to the require() line. We could use if/else for our checks but require is preferred. Require is like a try, catch in javascript. First we check for the validity of a certain condition, and then we set the error if that condition isn't met.
