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

        #Überschrift{
            text-align: center;
            color: black;

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
        .wrapper input[type = "text"]          /*für alle Input-Texte*/
        {
            border-bottom: 1px solid #1e7e34;
            background: black;                /*transparent macht weiße Hintergrundfläche der Eingabe transparent*/
            outline: #2c5b9c;
            height: 25px;
            color: white;    /*Farbe der Eingabeschrift*/
            font-size: 16px;
        }
        .wrapper #Beschreibung              /* für die große Beschreibungsbox */
        {
            border-bottom: 1px solid #1e7e34;
            background: black;
            outline: #2c5b9c;
            height: 100px;
            width:  300px;
            color: white;    /*Farbe der Eingabeschrift*/
            font-size: 16px;
        }
        .wrapper #Rückung1{
            text-indent: 292px;        /*Texteinrückung in die Mitte*/
        }
        .wrapper #Rückung2{
            text-indent: 145px;        /*Texteinrückung in die Mitte*/
        }
        .wrapper #Rückung3{
            text-indent: 240px;        /*Texteinrückung in die Mitte*/
        }
        .wrapper #Rückung4{
            text-indent: 233px;        /*Texteinrückung in die Mitte*/
        }
        .wrapper #Rückung5{
            text-indent: 200px;        /*Texteinrückung in die Mitte*/
        }
        #header{
            color: #fff;
            background-color: #2c5b9c;
            height: 3.5em;
            padding: 1em 0em 1em 1em;

        }
        .Leerzeile{
            text-indent: 20px;
            font-size: 17px;

        }

        .Abstand{
            background-color: white;
            padding: 20px 0px 20px 0px;    /*Abstand zwischen Bereichen/Kategorien */
        }
        .Abstand2{
            background-color: white;
            padding: 7px 0px 7px 0px;    /*Abstand zwischen Bereichen/Kategorien */
        }
        .Abstand3{
            background-color: white;
            padding: 20px 0px 15px 0px;    /*Abstand zwischen Bereichen/Kategorien */
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
            padding: 0px 0px 50px 0px;  /*damit ein Abstand nach unten vorhanden ist*/

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

    <h1 id = "Überschrift"> Projekt erstellen </h1>

    <p class = "Abstand"></p>

    <table>
        <tr>
            <th> <h2 id = "Rückung1"> Titel </h2></th>
            <td class = "Leerzeile">
                <input id = "PName" type = "text" Placeholder ="Name des Titels"> </td>
        </tr>
    </table>

        <p class = "Abstand2"></p>

     <table>
        <tr>
            <th> <h2 id = "Rückung2"> Finanzierungslimit </h2></th>
            <td class = "Leerzeile">
                <input id = "Finanz" type = "text" Placeholder ="Finazierungslimit">Euro
            </td>
        </tr>
     </table>

    <p class = "Abstand3"></p>

    <table>
        <tr>
            <th> <h2 id = "Rückung3"> Kategorie </h2></th>
            <td class = "Leerzeile">
                <label>
                    <select name="Kategorie" size="4">
                        <optgroup label="Kategorien">
                            <option label="HW">Health & Wellness</option>
                            <option label="E">Education</option>
                            <option label="AC">Art & Creative Works</option>
                            <option label="TI">Tech & Innovation</option>
                        </optgroup>
                    </select>
                </label>
            </td>
        </tr>
    </table>

    <p class = "Abstand3"></p>

    <table>
        <tr>
            <th> <h2 id = "Rückung4"> Vorgänger </h2></th>
            <td class = "Leerzeile">
                <label>
                    <select name="Vorgänger" size="3">
                        <optgroup label="Vorgänger">
                            <option label="UT">Ubuntu Touch</option>
                            <option label="UTP">Ubuntu Touch Pro</option>
                            <option label="KV">Kein Vorgänger</option>
                        </optgroup>
                    </select>
                </label>
            </td>
        </tr>
    </table>

    <p class = "Abstand3"></p>

    <table>
        <tr>
            <th> <h2 id = "Rückung5"> Beschreibung </h2></th>
            <td class = "Leerzeile">
                <textarea id = "Beschreibung" rows = '4' cols = "50" Placeholder = "Beschreibung"></textarea>
            </td>
        </tr>
    </table>

    <p class = "Abstand3"></p>

    <div style = "float:right;" id ="Ebutton" >
        <a href = "home"><input class="button" type ="button" name="" value = "Erstellen"></a>
    </div><br>


</div>
</body>
</html>