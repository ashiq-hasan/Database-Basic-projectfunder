<!DOCTYPE html>
<head>
    <title>ProjectFunder</title>
    <style type="text/css">
        * {
            margin:0;
            padding:0;
        }

        body{
            text-align:center;
            background: #efe4bf none repeat scroll 0 0;
        }
        .Profilbox{
            width: 5px;
            height: 5px;
            background: darkorange;             /*Farbe der großen Box*/
            color: #0f6674;
            top: 30%;
            left: 48%;    /*  Positionierung */
            position: absolute;
            transform: translate(-75%, -50%);  /* Anpassung der obigen Positionierung */

            padding: 70px 300px;  /*Größe des Paddings*/
        }

        .Profilbox #Schrift{
            margin-left: -280px;         /*richtige Einrückung in der Profilbox*/
            margin-top:-60px;
            color: black;
            font-size: 17px;
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

        #EProjekte{
            background-color: grey;
            padding: 250px 0px 0px 0px;   /*für Offene Projekte Bereich*/
        }
        .Abstand{
            background-color: white;
            padding: 40px 0px 40px 0px;    /*Abstand zwischen AProjekte und OProjekte */
        }
        #UProjekte{
            background-color: grey;
            padding: 250px 0px 0px 0px;   /*für Abgeschlossene Projekte Bereich*/
        }


        .centerBlock{
            margin:0 auto;
        }
    </style>

<body>
<div class="wrapper">
    <div id="header">
        <h1> ProjectFunder Website </h1>
    </div><br>

    <p class = Abstand> </p>

    <div class = "Profilbox">
    <div id = "Schrift">
        <h2> Profil von xy </h2><br>
        <ul>
            <li> Benutzername: Luxanna Crownguard</li>
            <li> Anzahl erstellter Projekte: 2</li>
            <li> Anzahl unterstützter Projekte: 90</li>
        </ul>
    </div>
    </div>

    <p class = Abstand> </p>
    <h1>Erstellte Projekte</h1><br>
    <div id = "EProjekte">
    </div>

    <p class = Abstand> </p>

    <h1>Unterstützte Projekte</h1><br>
    <div id = "UProjekte">
    </div> <br>



</div>
</body>
</html>