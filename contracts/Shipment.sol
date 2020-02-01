pragma solidity >=0.4.21 <0.7.0;

contract Carrier {

address owner;

struct shipment {
    string shipmentid;
    string locationA;
    string locationB;
    bool pickedup;
    bool delivered;
    uint256 amount;
}

struct carrier {
    uint DOTnumber;
    address carrier;
}

  constructor() public {
      owner = msg.sender;
  }

  function deposit(uint256 amount) payable public {
        require(msg.value == amount);

  function completedShipment(uint shipmentamount) payable public {
      if (pickedup = 1 && delivered = 1) {
          then deposit(shipmentamount);
      }
  }

}