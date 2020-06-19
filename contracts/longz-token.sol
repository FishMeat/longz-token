pragma solidity 0.6.2;

import "./tokens/nf-token-metadata.sol";
import "./ownership/ownable.sol";

contract LongZToken is
  NFTokenMetadata,
  Ownable
{
    constructor()
    public
  {
    nftName = "LongZ Card";
    nftSymbol = "LongZ";
  }

  function mint(
    address _to,
    uint256 _tokenId,
    string calldata _uri
  )
    external
    onlyOwner
  {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
}