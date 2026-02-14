let taskCount = 0;

function addTask() {

    let taskInput = document.getElementById("taskInput");
    let priority = document.getElementById("priority").value;
    let taskText = taskInput.value;

    if (taskText === "") {
        alert("Please enter a task");
        return;
    }

    let li = document.createElement("li");

    li.innerHTML = `
        <span>${taskText} (${priority})</span>
        <div>
            <button onclick="completeTask(this)">✔</button>
            <button onclick="deleteTask(this)">✖</button>
        </div>
    `;

    document.getElementById("taskList").appendChild(li);

    taskInput.value = "";
    taskCount++;
    updateCount();
}

function deleteTask(button) {
    let li = button.parentElement.parentElement;
    li.remove();
    taskCount--;
    updateCount();
}

function completeTask(button) {
    let li = button.parentElement.parentElement;
    li.classList.toggle("completed");
}

function updateCount() {
    document.getElementById("taskCount").innerText = taskCount;
}
