import "forge-std/Script.sol";
import "../src/GithubPFP.sol";
import "../src/GithubPFPFactory.sol";

contract DeployScript is Script {
    function run() public {
        address deployer = address(0x4F565FFEf2eea80A2D68e0Dd9306425444F0Db9F);
        vm.startBroadcast(deployer);
        GithubPFPFactory factory = new GithubPFPFactory();
        string memory baseURI = "https://github.com/zeroknots/gh-erc721/public/";
        string memory name = "Zeroknots";
        string memory symbol = "ZKPFP";

        address zeroknots = address(0x7913FEDA30503465EDAdc674a66fbDcB581f6840);
        address githubPFP = factory.createGithubPFP(baseURI, name, symbol, zeroknots);
        // GithubPFP(githubPFP).mint(zeroknots, 5);

        vm.stopBroadcast();
    }
}
