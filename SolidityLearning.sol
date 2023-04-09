contract ZombieFactory {

uint dnaDigits = 16;

uint dnaModulus = 10 ** dndDigits

}

//Array
Zombie [] public zombies;

//Function Declaration

function createZombie (string memory _name, uint _dna) public {
        
    }
//Working With Structs and Arrays
function createZombie (string memory _name, uint _dna) public {
        
    }
//Working with Structs and Arrays / Creating New Structs
function createZombie (string memory _name, uint _dna) public {
        zombies.push(Zombie(_name,_dna)); // Created New Structs
    }
//Private and Public Functions
function _createZombie (string memory _name, uint _dna) private {
     zombies.push(Zombie(_name,_dna)); // Created New Structs
}
       
//More on Functions
function _generateRandomDna(string memory _str) private view returns (uint) {
}
//Keccak256 and Typecasting
function _generateRandomDna(string memory _str) private view returns (uint) {
        unit rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }
//Everything Together
function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
}
//Events
contract ZombieFactory {

   event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
}