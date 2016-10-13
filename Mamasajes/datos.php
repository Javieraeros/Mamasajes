<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
    <table>
        <tr>
            <th>DNI</th>
            <th>Nombre</th>
            <th>Sexo</th>
            <th>Edad</th>
            <th>Mamasajes</th>
        </tr>
        <?php
        /*Cambiar y usar constantes para nombres de tablas y columnas!*/
        require_once "Conection.php";

        $db = Database::getInstance();
        $mysqlcon = $db->getConnection();
        $sql= "Select Dni,Nombre,Sexo,Edad,Mamasajes From Mamasajistas";
        $result=$mysqlcon->query($sql);
        /*No se porque no funciona :(*/
        if($result->num_rows > 0){
            while($row=$result->fetch_assoc()){
                echo '<tr><td>'.$row["Dni"].'</td><td>'.$row["Nombre"].'</td>';
                echo '<td>'.$row["Sexo"].'</td><td>'.$row["Edad"].'</td>';
                echo '<td>'.$row["Mamasajes"].'</td></tr>';
            }
        }

        ?>
    </table>
    </body>
</html>