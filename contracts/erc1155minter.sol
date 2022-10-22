// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import '@openzeppelin/contracts/token/ERC1155/ERC1155.sol';
import '@openzeppelin/contracts/access/Ownable.sol';


contract erc1155Minter is ERC1155,Ownable {


uint newtoken;

    constructor() ERC1155(""){
        newtoken++;
        _mint(_msgSender(),newtoken,1000000,"Governance");
    }

    function mintNew(uint supply, bytes memory _data) external  {
        uint tokenid=++newtoken;
        _mint(_msgSender(),tokenid,supply,_data);
    }
}