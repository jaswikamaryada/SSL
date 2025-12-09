function myFun() {
    const para = document.querySelectorAll('span');//if we move cursor only through the text then it gives length,if we move through empty area then length wont be appeared
    const tool_Tip = document.getElementById('tool_Tip');

    para.forEach(function(paragraph) {
        paragraph.addEventListener('mouseover', function(event) {
            const textLength = event.target.textContent.length;
            tool_Tip.textContent = `Length: ${textLength} characters`;
            tool_Tip.style.display = 'block';
        });

        paragraph.addEventListener('mousemove', function(event) {
            const mouseX = event.pageX + 10; 
            const mouseY = event.pageY + 10; 
            tool_Tip.style.left = `${mouseX}px`;
            tool_Tip.style.top = `${mouseY}px`;
        });
        paragraph.addEventListener('mouseout', function() {
            tool_Tip.style.display = 'none';
        });
    });
}
document.addEventListener('DOMContentLoaded', myFun);
