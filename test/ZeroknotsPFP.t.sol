import "forge-std/Test.sol";

import "../src/GithubPFP.sol";
import "../src/GithubPFPFactory.sol";





contract ZeroknotsPFPTest is Test {
    address deployer = address(0x1001);

    GithubPFPFactory factory;

    function setUp() public {

        vm.broadcast(deployer);
        factory = new GithubPFPFactory();
    }

    function testMint() public {
        string memory baseURI = "https://github.com/zeroknots/pfp/public/";
        string memory name = "ZeroknotsPFP";
        string memory symbol = "ZKPFP";

        address githubPFP = factory.createGithubPFP(baseURI, name, symbol);
        GithubPFP(githubPFP).mint(deployer, 10);

        assertEq(GithubPFP(githubPFP).balanceOf(deployer), 10);

        console.log(GithubPFP(githubPFP).tokenURI(0));


    }
}
