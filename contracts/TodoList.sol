pragma solidity >=0.5.12 <0.7.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    constructor() public {
        createTask("Check out https://github.com/divyanshukrtiwari");
    }

    mapping(uint=> Task) public tasks;

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
