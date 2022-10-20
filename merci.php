<?php
if(isset($_GET['bravo']) && !empty($_GET['bravo'])){
    
}
else{
    header('Location:index.html');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ardeche mokoko</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style_css/merci.css" rel="stylesheet" >
</head>
<body>
    <section class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-5">
                    <img src="style_css/images/merci.png" class="card-img-top"  alt="...">
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-5">
                    <div class="alert alert-success" role="alert">
                        Félicitation !
                      </div>
                      <p>
                        Votre message à bien été envoyé.<br>
                        Je vais vous répondre dans les prochaines heures à venir.<br>
                        Merci de m'avoir contacter.<br><br>
                        <span> Dans 10 secondes vous serez rediriger vers la page d'accueil.</span>
                      </p>
                </div>
            </div>
        </div>
    </section>
    <script>
        (function(){
            setTimeout(myTimer, 9000);
            function myTimer() {
                window.location.replace("index.html");
            }
        })();
    </script>
</body>
</html>