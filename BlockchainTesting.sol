/* 
API and Integration Testing
Block/Peer/Node Testing
Functional Testing
Performance Testing
Smart Contract Testing
Security Testing
*/

pragma solidity >=0.4.22 <0.8.0;

contract Voting {
    address[16] public locations;

    function vote(uint256 locationId) public returns (uint256) {
        require(locationId >= 0 && locationId <=15);
        locations[locationId]= msg.sender;

        return locationsId;
    }
    function getLocations() public view returns (address[16] memory) {
        return locations;
    }
}












