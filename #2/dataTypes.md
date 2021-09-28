#Integers in Solidity:

[refer to this](https://ethereum.stackexchange.com/questions/29946/what-is-uint256)
uint256 (uint is an alias) is a unsigned integer which has:

minimum value of 0
maximum value of 2^256-1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935 //78 decimal digits
int256 (int is an alias) is a signed integer which has:

minimum value of -2^255 = -57896044618658097711785492504343953926634992332820282019728792003956564819968
maximum value of 2^255-1 = 57896044618658097711785492504343953926634992332820282019728792003956564819967

##uint vs int

The primitive data types prefixed with "u" are unsigned versions with the same bit sizes. Effectively, this means they cannot store negative numbers, but on the other hand they can store positive numbers twice as large as their signed counterparts. The signed counterparts do not have "u" prefixed.


U - unsigned (meaning this type can only represent positive integers, not positive and negative integers)
INT - integer
256 - 256 bits in size
Context: The EVM (Ethereum Virtual Machine) uses 256 bits as its word size. See: [Rationale behind 256-bit words in EVM](https://ethereum.stackexchange.com/questions/7382/rationale-behind-256-bit-words-in-evm)


** the number near the int/uint like int8 int256 is the size of inteager, if you care about optimizing your code so use the corresponding size according to your needs.

like unit8 = 0 - 2^8(256)