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
        require_once "../BDCosntants.php";

        $db = Database::getInstance();
        $mysqlcon = $db->getConnection();
        $sql= "Select ".NombresMysql\tabla::DNI.","
            .NombresMysql\tabla::Nombre. ","
            .NombresMysql\tabla::Sexo.","
            .NombresMysql\tabla::Edad.","
            .NombresMysql\tabla::Mamasajes." From "
            .NombresMysql\tabla::nombreTabla;
        $result=$mysqlcon->query($sql);
        /*No se porque no funciona :(*/
        if($result->num_rows > 0){
            while($row=$result->fetch_assoc()){
                echo '<tr><td>'.$row[NombresMysql\tabla::DNI].'</td><td>'.$row[NombresMysql\tabla::Nombre].'</td>';
                echo '<td>'.$row[NombresMysql\tabla::Sexo].'</td><td>'.$row[NombresMysql\tabla::Edad].'</td>';
                echo '<td>'.$row[NombresMysql\tabla::Mamasajes].'</td></tr>';
            }
        }

        ?>
    </table>
    </body>
</html>