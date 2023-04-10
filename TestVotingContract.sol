pragma solitidy >=0.4.22 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";

import "BlockchainTesting.sol";

contract TestVoting {
    Voting voting = Voting (DeployedAddresses.Voting());
    
    uint256 expectedLocationId = 8;

    address expectedVotedLocation = address(this);

    function testUserCanVotLocation() public {
        uint256 returnedId = voting.vote(expectedLocationId);

        Assert.equal(
            returnedId,
            expectedLocationId,
            "User was able to vote for the expected location an expectedVotedLocation should match what is returned."
        );
    }

    function testGetVoteLocationAddressByLocationId() public {
        address location = voting.location(expectedLocationId);

        assert.equal(
            location,
            expectedVotedLocation,
            "Voted Location of the expected location should be this contract"
        );
    }    
    
    function testGetVotedLocationAddressByLocationIdInArray() public {
        address[16] memory locations = voting.getLocations();

        assert.equal(
            location [expectedLocationId],
            expectedVotedLocation,
            "Voted location of the expect location should be this contract"
        );
    }
}
