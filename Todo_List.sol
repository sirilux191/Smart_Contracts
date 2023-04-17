// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Todolist{

    struct Todo{
        string text;
        bool completed;
    }    

    Todo[] public todos;

    //This defines a Solidity contract called `Todolist`. It has a struct `Todo` which contains a `text` string and a `completed` boolean flag. It defines an array of `Todo` items called `todos`, which is marked as public, allowing it to be accessed from outside the contract.

    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed : false
        }));
    }

    //This is a function called `create` that allows users to add new to-do items to the list by passing a `string` parameter `_text` which is used to create a new `Todo` struct object and appended to the `todos` array.

    function updateText(string calldata _text, uint _index) external {
        todos[_index].text = _text;
    }

    //This is a function called `updateText` that allows users to update the `text` of an existing to-do item identified by its index in the `todos` array.

    function get(uint _index) external view returns(string memory, bool){
        return (todos[_index].text, todos[_index].completed);
    }

    //This is a function called `get` that allows users to retrieve the `text` and `completed` status of a specific to-do item identified by its index in the `todos` array.

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }

    //This is a function called `toggleCompleted` that allows users to mark a to-do item as completed or not by flipping the `completed` boolean flag of the corresponding `Todo` struct object in the `todos` array.
}