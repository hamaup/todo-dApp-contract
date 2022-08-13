// TodoContract.sol
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.9;

contract TodoContract {
    uint256 public taskCount = 0;

    struct Task {
        uint256 index;
        string taskName;
        bool isComplete;
    }

    mapping(uint256 => Task) public todos;
    //1.to-doを作成する機能
    event TaskCreated(string task, uint256 taskNumber);
    //2.to-doを更新する機能
    event TaskUpdated(string task, uint256 taskId);
    //3.to-doの完了・未完了を切り替える機能
    event TaskIsCompleteToggled(string task, uint256 taskId, bool isComplete);
    //4.to-doを削除する機能
    event TaskDeleted(uint256 taskNumber);
}
