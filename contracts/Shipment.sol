pragma solidity >=0.5.12;

contract Carrier {

address owner;
mapping(address => uint256) public balanceOf;

struct Shipment {
    ///string shipmentid;
    ///string locationA;
    ///string locationB;
    bool pickedup;
    bool delivery;
    ///uint256 amount;
}

mapping (address => Shipment) public ShipmentInfo;

struct carrier {
    uint DOTnumber;
    address carrier;
}

event Deposit (
    address indexed _from,
    bytes32 indexed _id,
    uint _value
);

constructor() public {
      owner = msg.sender;
  }

function deposit(uint256 amount) payable public {
        require(msg.value == amount);
        balanceOf[msg.sender] += amount;
  }
function setPickupStatus(bool pickedstatus) public {
        Shipment storage shipment = ShipmentInfo[msg.sender];
        shipment.pickedup = pickedstatus;
    }
function setDeliveryStatus(bool deliverystatus) public {
        Shipment storage shipment = ShipmentInfo[msg.sender];
        shipment.delivery = deliverystatus;
    }
/**function completedShipment(uint shipmentamount) public payable {
      if (ShipmentDetails[pickedup] == 1) {
          require deposit(shipmentamount);
      }
  }**/
}