<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
    <title>Swot maker</title>
</head>
<body>
    <div class="swotDiv">
        <div class="strength">
            <label for="strength"><h4 id="strengthLabel">Forces</h4></label>
            <button id="addStrength" class="add">+</button>
            
            <div class="list" id="strengthList">
            </div>

        </div>

        <div class="weakness">
            <label for="weakness"><h4 id="weaknessLabel">Faiblesses</h4></label>
            <button id="addWeakness" class="add">+</button>
            <div class="list" id="weaknessList"></div>
        </div>

        <div class="opportunities">
            <label for="opportunities"><h4 id="oppLabel">Opportunités</h4></label>
            <button id="addOpportunity" class="add">+</button>
            <div class="list" id="opportunitiesList"></div>
        </div>

        <div class="threats">
            <label for="Menaces"><h4 id="threatsLabel">Menaces</h4></label>
            <button id="addThreat">+</button>

            <div class="list" id="threatsList">
            </div>

        </div>
        
    </div>

    <div class="projectInfo">
        <div class="projectName">
            <label for="projectName"><h1>Nom du projet</h1></label>
            <textarea name="projectName" id="pjName" cols="23" rows="2">Nouveau projet</textarea>
        </div>

        <div class="projectGoal">
            <label for="projectGOal"><h1>But du projet</h1></label>
            <textarea name="goal" id="goalText" cols="23" rows="10">Avoir de l'argent</textarea>
        </div>

        <button id="cleanProject">Recommencer le projet</button>
    </div>

</body>
</html>