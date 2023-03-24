import "forge-std/Test.sol";

import "../src/GithubPFP.sol";





contract ZeroknotsPFPTest is Test {
    address deployer = address(0x1001);

    GithubPFP zkpfp;

    function setUp() public {
        string memory baseURI = "http://localhost:8080/";

        vm.broadcast(deployer);
        zkpfp = new GithubPFP(baseURI, "ZeroknotsPFP", "ZKPFP");
    }

    function testMint() public {
        vm.startBroadcast(deployer);
        zkpfp.mint(deployer, 1);

        console.log('URI %s', zkpfp.tokenURI(1));

    }
}
