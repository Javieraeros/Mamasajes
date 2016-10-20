<?php
/**
 * Created by PhpStorm.
 * User: fjruiz
 * Date: 20/10/16
 * Time: 9:16
 */
    require_once "Conection.php";
    require_once "../BDCosntants.php";

    $db=Database::getInstance();
    $connection=$db->getConnection();
    $stmt = $connection->prepare("INSERT INTO ".NombresMysql\tabla::nombreTabla.
        " (".NombresMysql\tabla::DNI.
        ",".NombresMysql\tabla::Nombre.
        ",".NombresMysql\tabla::Sexo.
        ",".NombresMysql\tabla::Edad.
        ",".NombresMysql\tabla::Mamasajes.
        ") VALUES (?,?,?,?,?)");
    $stmt->bind_param("sssis",$_POST['dni'],$_POST["nombre"],
        $_POST["sexo"],$_POST["edad"],$_POST["mamasajes"]);
    $correcta=$stmt->execute();

    if($correcta){
        echo "Consulta ejecutada correctamente!";
    }else{
        echo "Falló la ejecución: (" . $stmt->errno . ") " . $stmt->error;
    }