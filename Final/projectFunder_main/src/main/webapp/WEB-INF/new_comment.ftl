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
            width: 330px;
            height: 350px;
            background: lightgray;             /*Farbe der großen Box*/
            color: #0f6674;
            top: 65%;
            left: 68%;    /*  Positionierung */
            position: absolute;
            transform: translate(-75%, -50%);  /* Anpassung der obigen Positionierung */

            padding: 80px 310px;  /*Größe des Paddings*/
        }

        #Schrift{
            margin-left: -280px;         /*richtige Einrückung in der Profilbox*/
            margin-top:-60px;
            color: black;
            font-size: 17px;
        }
        .Profilbox a:hover
        {
            cursor: pointer;
            color: green;
        }

        .Tech{
            width: 150px;
            height: 150px;
            position: absolute;
            top: 10px;            /*nach oben verschieben mit minus*/
            left: calc(50% - 100px); /*sodass mittig */
        }

        .button{
            position: absolute;
            top: 450px;            /*nach oben verschieben mit minus*/
            left: calc(46% - 100px); /*sodass mittig */

            border: none;
            outline: none;
            height: 30px;
            line-height: 25px;
            width: 250px;          /*Breite des Buttons*/

            color: white;         /*Farbe der Eingabeschrift*/
            font-size: 20px;
            border-radius: 15px; /*macht Ränder des Buttons rund*/
            /* margin-right: 100px;*/
        }
        #Spenden{
            background: blue;  /* Farbe des Hintergunds des Buttons*/

        }

        #Spenden:hover{
            background: lightblue;  /* Farbe des Hintergunds des Buttons*/
            color: black;
        }
        .wrapper #Beschreibung              /* für die große Beschreibungsbox */
        {
            position: absolute;
            top: 230px;            /*nach oben verschieben mit minus*/
            left: calc(35% - 100px); /*sodass mittig */

            border-bottom: 1px solid #1e7e34;
            background: black;
            outline: #2c5b9c;
            height: 120px;
            width:  500px;
            color: white;    /*Farbe der Eingabeschrift*/
            font-size: 16px;
            margin-top:30px;
        }
        .wrapper #Box     /* für die große Beschreibungsbox */
         {
             position: absolute;
             top: 400px; /*nach oben verschieben mit minus*/
             left: calc(35% - 100px); /*sodass mittig */
         }
        .wrapper #Anonym     /* für die große Beschreibungsbox */
        {
            position: absolute;
            top: 390px; /*nach oben verschieben mit minus*/
            left: calc(38% - 100px); /*sodass mittig */
        }
        .Projekt{
            position: absolute;
            top: 180px;            /*nach oben verschieben mit minus*/
            left: calc(41% - 100px); /*sodass mittig */
        }

        .Kommentar{
            position: absolute;
            top: 230px;            /*nach oben verschieben mit minus*/
            left: calc(35% - 100px); /*sodass mittig */
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



        .Abstand{
            background-color: white;
            padding: 200px 0px 80px 0px;    /*Abstand zwischen AProjekte und OProjekte */
        }
        .Abstand2{
            background-color: white;
            padding: 0px 0px 80px 0px;    /*Abstand zwischen AProjekte und OProjekte */
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
            <img src = "PNG/tech.png" class = "Tech">
            <div class ="Projekt"><h1>"Name des Projekts"</h1></div>
            <div class="Kommentar"><h2>Kommentar:</h2></div>
                <textarea id = "Beschreibung" rows = '4' cols = "50" Placeholder = "Beschreibung"></textarea><br>
            <input type="checkbox" id="Box" value="">
            <h2 id="Anonym">Anonym?</h2>
            <input id = "Spenden"  class="button" type = "submit" name="" value="Kommentar hinzufügen">
        </div>
    </div>
    <p class = Abstand> </p>

</body>
</html>