// script.js
let isRunning = false;
let startTime, timerInterval, elapsedTime = 0;

const timeDisplay = document.getElementById("time-display");
const toggleBtn = document.getElementById("toggle-btn");
const resetBtn = document.getElementById("reset-btn");

function updateDisplay() {
  const currentTime = Date.now();
  elapsedTime = currentTime - startTime;

  const hours = Math.floor(elapsedTime / 3600000);
  const minutes = Math.floor((elapsedTime % 3600000) / 60000);
  const seconds = Math.floor((elapsedTime % 60000) / 1000);
  const milliseconds = Math.floor((elapsedTime % 1000) / 10);

  timeDisplay.textContent = `${pad(hours)}:${pad(minutes)}:${pad(seconds)}.${pad(milliseconds, 2)}`;
  timeDisplay.style.color = getRandomColor();
}

function pad(num, size = 2) {
  return String(num).padStart(size, "0");
}

function getRandomColor() {
  const letters = "0123456789ABCDEF";
  let color = "#";
  for (let i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}

toggleBtn.addEventListener("click", () => {
  if (isRunning) {
    clearInterval(timerInterval);
    elapsedTime = Date.now() - startTime;
    toggleBtn.textContent = "Start";
  } else {
    startTime = Date.now() - elapsedTime;
    timerInterval = setInterval(updateDisplay, 10);
    toggleBtn.textContent = "Stop";
  }
  isRunning = !isRunning;
});

resetBtn.addEventListener("click", () => {
  clearInterval(timerInterval);
  isRunning = false;
  elapsedTime = 0;
  timeDisplay.textContent = "00:00:00.00";
  toggleBtn.textContent = "Start";
  timeDisplay.style.color = "#333";
});
