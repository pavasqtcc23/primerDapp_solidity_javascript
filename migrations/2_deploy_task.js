// en este archivo hacemos el "deploy del taskscontracts" de smart contracts

const TasksContract = artifacts.require("TasksContract");

module.exports = function (deployer) {
  deployer.deploy(TasksContract);
};

