//SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TasksContract {
//mapping conjunto de datos que contiene clave-valor , clave : cualquier
// tipo de datos 

    uint public taskCounter = 0;

    constructor () {
        createTask("Tarea de prueba ", "Tarea para uso cientifico");
    }


    struct Task {
        uint id;
        string title;
        string description;
        bool done;
        uint createdAt;
    }

// estoy creando una lista de tareas refenciado a task
    mapping (uint256 => Task ) public tasks;

    function createTask(string memory _title,string memory  _description) public {
         tasks[taskCounter] = Task(taskCounter,_title,_description,false,block.timestamp);
          taskCounter++; 

    }

    function toggleDone(uint _id) public {
       Task memory _task = tasks[_id];
       _task.done = !_task.done;
       tasks[_id] = _task;
    }



     
    
    
    
    
    }