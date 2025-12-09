document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");
    const taskInput = document.getElementById("a"); 
    const tasksList = document.getElementById("tasks_list"); 

    // Handle form submission
    form.addEventListener("submit", (event) => {
        event.preventDefault(); 

        const taskText = taskInput.value.trim(); 

        if (taskText === "") {
            alert("Please enter a task."); 
            return; 
        }

        const li = document.createElement("li");
        li.innerHTML = `
            <input type="checkbox" class="task-checkbox">
            <span>${taskText}</span>
            <button type="button" class="remove-task">Remove</button>
        `;

        // Appending newtask
        tasksList.appendChild(li);
        taskInput.value = ""; 

        // Marking task as completed
        const checkbox = li.querySelector(".task-checkbox");
        checkbox.addEventListener("change", () => {
            li.classList.toggle("completed", checkbox.checked); // Toggle completed class
        });

        // Removing task
        const removeButton = li.querySelector(".remove-task");
        removeButton.addEventListener("click", () => {
            tasksList.removeChild(li); 
        });
    });
});
