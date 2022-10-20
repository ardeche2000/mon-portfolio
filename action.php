<?php
require('base.php');
if(isset($_POST['envoyer'])){
    if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['prenom']) && !empty($_POST['prenom'])
    && isset($_POST['telephone']) && !empty($_POST['telephone']) && isset($_POST['email']) && !empty($_POST['email'])
    && isset($_POST['message']) && !empty($_POST['message'])){
        $nom=htmlspecialchars(trim($_POST['nom']));
        $prenom=htmlspecialchars(trim($_POST['prenom']));
        $telephone=htmlspecialchars(trim($_POST['telephone']));
        $email=htmlspecialchars(trim($_POST['email']));
        $message=htmlspecialchars(trim($_POST['message']));
        
        if($nom && $prenom && $email <=50){
            if(strlen($telephone)<=10){
                if(preg_match('/^[0-9]{10}+$/', $telephone)) {
                    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
                        $inserer=$connexion->prepare('INSERT INTO contact(nom,prenom,telephone,email,message)
                        VALUES(?,?,?,?,?)');
                        $inserer->execute(array($nom,$prenom,$telephone,$email,$message));
                        header('Location:merci.php?bravo=sauvegarde_reussi');
                  }else{
                    header('Location:index.html#contact');
                  }
                    } else {
                        header('Location:index.html#contact');
                    }
            }
            else{
                header('Location:index.html#contact');
            }

        }else{
            header('Location:index.html#contact');
        }
    }
    else{
        header('Location:index.html#contact');
    }
}
?>