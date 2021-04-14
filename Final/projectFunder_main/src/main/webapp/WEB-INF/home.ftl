

<!DOCTYPE html>
<head><title>ProjectFunder</title>
    <style type="text/css">
        * {
            margin:0;
            padding:0;
        }

        body{
            text-align:center;
            background: #efe4bf none repeat scroll 0 0;
        }

        .wrapper{
            width:960px;
            margin:0 auto;
            text-align:left;
            background-color: #fff;
            border-radius: 0 0 10px 10px;
            padding: 20px;
            box-shadow: 1px -2px 14px rgba(0, 0, 0, 0.4);
        }

        #header{
            color: #fff;
            background-color: #2c5b9c;
            height: 3.5em;
            padding: 1em 0em 1em 1em;

        }

        #site{
            background-color: #fff;
            padding: 20px 0px 0px 0px;
        }
        #Pbutton{
            background-color: white;
            padding: 25px 0px 50px 0px;   /*für Button, 50px Abstand/Länge von unten*/
        }
        #OProjekte{
            background-color: grey;
            padding: 250px 0px 0px 0px;   /*für Offene Projekte Bereich*/
        }
        .Abstand{
            background-color: white;
            padding: 40px 0px 40px 0px;    /*Abstand zwischen AProjekte und OProjekte */
        }
        #AProjekte{
            background-color: grey;
            padding: 250px 0px 0px 0px;   /*für Abgeschlossene Projekte Bereich*/
        }
         .button{
            border: none;
            outline: none;
            height: 25px;
            line-height: 20px;
            width: 200px;          /*Breite des Buttons*/
            background: #2c5b9c;  /* Farbe des Hintergunds des Buttons*/
            color: white;         /*Farbe der Eingabeschrift*/
            font-size: 17px;
            border-radius: 15px; /*macht Ränder des Buttons rund*/
            /* margin-right: 100px;*/
         }
         .button:hover{
             background: lightcoral;
             color: darkblue;
         }

         #Ebutton{
                /* funktioniert in input-Bereich !!!*/
             padding: 0px 0px 25px 0px;  /*damit ein Abstand nach unten vorhanden ist*/

         }


        .centerBlock{
            margin:0 auto;
        }
    </style>

<body>
<div class="wrapper">
    <div id="header">
        <h1> ProjectFunder Website </h1>
    </div>

    <div id = "Pbutton">
    <input class="button" type ="button" name="" value = "Profil">
    </div>

    <h1>Offene Projekte</h1><br>
    
     <#list projects as user>
    
        ${user.getTitel()}
        <h1>von:</h1>${user.getErsteller()}
         <h1>Akteull:</h1>${user.getFinanzierungslimit()}
    
    </#list>
  

    <p class = Abstand> </p>

    <h1>Abgeschlossene Projekte</h1><br>
<#list Cprojects as use>
    
        ${use.getTitel()}<br>
        <h3>von:</h3>${use.ersteller}<br>
         <h3>Aktuell:</h3>${use.getFinanzierungslimit()}
     
    </#list>
   
  

    <div style = "float:right;" id ="Ebutton">
        <a href ="new_project"><input class="button" type ="button" name="" value = "Projekt erstellen"> </a>
    </div><br>


</div>
</body>
</html>