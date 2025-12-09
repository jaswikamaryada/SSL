document.addEventListener("DOMContentLoaded", function() {
    const passwordInput = document.getElementById("pass");
    const strengthMeter = document.getElementById("strength_meter");
    const submitButton = document.getElementById("submit-button");

    const strengthText = document.createElement("p");
    strengthMeter.after(strengthText);

    submitButton.disabled = true;
    submitButton.style.backgroundColor = "grey";
    // Main function to handle strength checking and updating
    function myfun() {
        const password = passwordInput.value;
        const strength = evaluateStrength(password);
        updateStrengthMeter(strength);
    }

    // Function to evaluate password strength
    function evaluateStrength(password) {
        let strength = 0;
        
        const lengthCriteriaStrong = /.{8,}/;
        const lengthCriteria = /.{6,}/; 
        const lowercaseCriteria = /[a-z]/; 
        const uppercaseCriteria = /[A-Z]/; 
        const numberCriteria = /\d/; 
        const specialCharacterCriteria = /[!@#$%^&*(),.?":{}|<>]/;

        // weak
        if (lengthCriteria.test(password) && lowercaseCriteria.test(password))
            {strength=1;}
        //medium
        if (lowercaseCriteria.test(password) && lengthCriteria.test(password)&& uppercaseCriteria.test(password) && numberCriteria.test(password))
            {strength=2;}
        //strong
        if (uppercaseCriteria.test(password) && lowercaseCriteria.test(password) && lengthCriteriaStrong.test(password) && numberCriteria.test(password) && specialCharacterCriteria.test(password))
            {strength=3;}
       

        return strength;
    }

    function updateStrengthMeter(strength) {
        const div2 = document.querySelector(".div2");
        div2.style.width = "0%";
        div2.style.backgroundColor = "";
        div2.style.borderRadius = "5px";
        submitButton.disabled = true;
      
        div2.classList.remove("weak", "medium", "strong");
        submitButton.style.backgroundColor = "grey"; 

        if (strength === 0) {
            // div2.style.width = "0%";
            strengthText.textContent = "";
        } else if (strength == 1) {
            div2.style.width = "100%";
            div2.style.backgroundColor = "red";
            strengthText.textContent = "Weak";
        } else if (strength === 2) {
            div2.style.width = "100%";
            div2.style.backgroundColor = "orange";
            strengthText.textContent = "Medium";
        } else if (strength == 3) {
            div2.style.width = "100%";
            div2.style.backgroundColor = "green";
            strengthText.textContent = "Strong";
            submitButton.disabled = false; 
            submitButton.style.backgroundColor = "green"; //enabeling submit button and turning it green
        }
    }

    passwordInput.addEventListener("input", myfun);
});
