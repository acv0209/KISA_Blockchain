pragma solidity ^0.4.18; 

contract Timer { 
    uint lastUpdated; 
    
    function updateTimestamp() public { 
        lastUpdated = now;     //now로 설정
    } 
    //10 초 지난 경우 true , 아닌 경우 false 

    function tenSecondesHavePassed() public view returns(bool) { 
        return (now >= (lastUpdated + 10)); 
    }
}
