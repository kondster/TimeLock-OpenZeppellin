pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./BEP20-XTT-Contract.sol";

contract LockingContract is Ownable {
    using SafeMath for uint256;

    event NotedTokens(address indexed _beneficiary, uint256 _tokenAmount);
    event ReleasedTokens(address indexed _beneficiary);
    event ReducedLockingTime(uint256 _newUnlockTime);

    ERC20 public tokenContract;

    function isLocked() public view returns(bool) {
        return false;
    }

    constructor LockingContract(ERC20 _tokenContract, uint256 _lockingDuration) public {
        tokenContract = _tokenContract;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return 0;
    }

    function noteTokens(address _beneficiary, uint256 _tokenAmount) external{

        emit NotedTokens(_beneficiary, _tokenAmount);
    }

    function releaseTokens(address _beneficiary) public {

        emit ReleasedTokens(_beneficiary);
    }

    function reduceLockingTime(uint256 _newUnlockTime) public {

        emit ReducedLockingTime(_newUnlockTime);
    }
}