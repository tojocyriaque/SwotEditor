const projectInput = document.querySelector("#projectName");
const goalArea = document.querySelector("#goalText");

const strengthList = document.querySelector("#strengthList");
const weaknessList = document.querySelector("#weaknessList");
const opporutnitiesList = document.querySelector("#opportunitiesList");
const threatsList = document.querySelector("#threatsList");

const addStrength = document.querySelector("#addStrength");
const addWeakness = document.querySelector("#addWeakness");
const addOpportunity = document.querySelector("#addOpportunity");
const addThreat = document.querySelector("#addThreat");

const cleanProject = document.querySelector("#cleanProject");
const searchProject = document.querySelector("#searchProject");

cleanProject.addEventListener("click", () => {
    strengthList.innerHTML = "<div class='list' id='strengthList'></div>";
    weaknessList.innerHTML = "<div class='list' id='weaknessList'</div>";
    opporutnitiesList.innerHTML = "<div class='list' id='opportunitiesList'></div>";
    threatsList.innerHTML = "<div class='list' id='threatsList'></div>";
});

addStrength.addEventListener("click", () => {
    let val = prompt("Ajouter une nouvelle force au projet");
    if(val === "" || val===null){
        return;
    }
    let newStrength = document.createElement("h6");
    newStrength.innerHTML = `<h6>${val}</h6>`;
    console.log(strengthList);
    strengthList.appendChild(newStrength);
});

addWeakness.addEventListener("click", () => {
    let val = prompt("Ajouter une nouvelle faiblesse au projet");
    if(val === "" || val===null){
        return;
    }
    let newWeakness = document.createElement("h6");
    newWeakness.innerHTML = `<h6>${val}</h6>`;
    console.log(strengthList);
    weaknessList.appendChild(newWeakness);
});

addOpportunity.addEventListener("click", () => {
    let val = prompt("Ajouter une nouvelle opportunité au projet");
    if(val === "" || val===null){
        return;
    }
    let newOpportunity = document.createElement("h6");
    newOpportunity.innerHTML = `<h6>${val}</h6>`;
    console.log(strengthList);
    opporutnitiesList.appendChild(newOpportunity);
});

addThreat.addEventListener("click", () => {
    let val = prompt("Ajouter une nouvelle force au projet");
    if(val === "" || val===null){
        return;
    }
    let newThreat = document.createElement("h6");
    newThreat.innerHTML = `<h6>${val}</h6>`;
    console.log(strengthList);
    threatsList.appendChild(newThreat);
});


