pragma solidity ^0.5.2;

interface IBeaconContract {
    /*
      If there is a randomness that was calculated based on blockNumber, returns it.
      Otherwise, returns 0.
    */
    function getRandomness(uint256 blockNumber) external view returns (bytes32);

    /*
      Returns the latest pair of (blockNumber, randomness) that was registered.
    */
    function getLatestRandomness() external view returns (uint256, bytes32);
}
