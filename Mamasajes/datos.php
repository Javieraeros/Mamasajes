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
        require_once "Conection.php";

        $db = Database::getInstance();
        $mysqlcon = $db->getConnection();
        $sql= "Select Dni,Nombre,Sexo,Edad,Mamasajes From Mamasajes";
        $result=$mysqlcon->query($sql);
        if($result->num_rows>0){
            while($row=$result->fetch_assoc()){
                echo '<tr><td>'.$row["Dni"].'</td><td>'.$row["Nombre"].'</td></tr>';
                echo '<tr><td>'.$row["Sexo"].'</td><td>'.$row["Edad"].'</td></tr>';
                echo '<tr><td>'.$row["Mamasajes"].'</td>';
            }
        }

        ?>
    </table>
    </body>
</html>