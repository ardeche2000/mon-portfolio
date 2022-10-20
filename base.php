<?php
    $servername="localhost";
    $username="root";
    $userpass="";
    $donnees="jador";
    try{
        $connexion= new PDO("mysql:host=$servername;dbname=$donnees",$username,$userpass);
        $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e){
        echo "Erreur : " . $e->getMessage();
    }

?>