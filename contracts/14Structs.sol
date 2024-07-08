// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text, bool _compl) public {
        todos.push(Todo(_text,_compl));
        todos.push(Todo({text: _text, completed: _compl}));
        Todo memory todo;
        todo.text = _text;
        todo.completed = _compl;
        todos.push(todo);
    }

    function get(uint256 index) public view returns (string memory text, bool completed) {
        return (todos[index].text, todos[index].completed);
    } 

    function update(uint256 index, string calldata _text) public {
        Todo storage todo = todos[index];
        todo.text = _text;
    }
}