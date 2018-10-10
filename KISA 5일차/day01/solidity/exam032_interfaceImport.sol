pragma solidity ^0.4.11;
import "./exam032_interface.sol";

contract Example032 is iStageMachine {
    Stages public _stage;

    function transitionNextStage() {
        _stage = Stages(uint(_stage) + 1);
    }

    function sendSow(address customer) {
        transitionNextStage();
    }
}

