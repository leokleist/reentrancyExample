pragma solidity ^0.4.19;
import "zeppelin-solidity/contracts/crowdsale/validation/IndividuallyCappedCrowdsale.sol";

contract VulnerableCrowdsale is IndividuallyCappedCrowdsale  {
    function VulnerableCrowdsale(uint256 _rate, address _wallet, ERC827Token _token) public ERC827Crowdsale(_rate, _wallet, _token){}

    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
        token.transfer(_beneficiary, _tokenAmount, "0");
    }

}
