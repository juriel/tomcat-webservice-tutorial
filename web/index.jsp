<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>

    <script type="text/javascript">
        function espicho_jquery() {
            persona = {};
            persona.name = "Pedro Martinez Rodriguez JQUERY";
            persona.age = 40;

            $.ajax({
                type: "POST",
                url: "ws/person/sendpersona",                
                data: JSON.stringify(persona),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $("#resultado").html(" JQUERY :" + data.name);
                },
                error: function (errMsg) {
                    alert(errMsg);
                }
            });
        }



        function handler() {
            if (this.status == 200) {
                console.log("TODO OK");
                console.log(this.response);
                persona = JSON.parse(this.response);
                console.log("Nombre " + persona.name);
                div = document.getElementById("resultado");
                div.innerHTML = " El nombre es " + persona.name;

            } else {
                console.log("TODO NO OK " + this.status);
            }
        }
        function espicho() {

            var client = new XMLHttpRequest();
            client.onload = handler;
            client.open("POST", "ws/person/sendpersona");

            client.setRequestHeader("Content-Type", "application/json");
            a = document.getElementsByName("variable");
            console.log(a[0].value);

            persona = {};
            persona.name = "Pedro MArtinez Rodriguez";
            persona.age = 40;
            client.send(JSON.stringify(persona));
        }
    </script>


    <body>
        <div>Hola Mundo</div>
        <form action="otra.jsp" method="POST">
            <input name="variable" >
            <input name="OK" value="Aceptar" type="submit">
        </form>
        <div id="resultado"></div>

        <button onclick="espicho();">Espichame</button>
        <%

            String var = request.getParameter("variable");
            if (var != null) {
                out.print("La variable " + var);
            }

        %>

        <button onclick="espicho_jquery();">Espichame Jquery</button>
    </body>
</html>
