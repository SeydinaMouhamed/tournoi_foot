<?php
require_once("classes/CommunDb.class.php");
function displayPageHeader( $pageTitle ) {
    ?>
    <!DOCTYPE html>
    <html lang="fr">
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo $pageTitle; ?></title>

        <link href="css/fonts/flaticon/flaticon.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
	    <link href="css/off-canvas.css" rel="stylesheet">
	    <link href="css/animate.css" rel="stylesheet">
	    <link href="css/language-select.css" rel="stylesheet">
	    <link href="css/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    	<link href="css/magnific-popup.css" rel="stylesheet">
	    <link href="css/template.css" rel="stylesheet">
	    <link href="css/menu.css" rel="stylesheet">
	    <link href="css/style.css" rel="stylesheet">
	    <link href="css/responsive.css" rel="stylesheet">
        <script src="js/modernizr-2.8.1.min.js"></script>
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->

      </head>
      <body>
    <?php
}
function getNationalitiesRegisted(){
    return CommunDb::getAllNationality();
}
function secure($val){
    return htmlspecialchars(trim($val));
}
function getAllInputsInfosPersonne(){
    ?>
    <datalist id="listNationalite">
        <?php
        if ($nationalites = getNationalitiesRegisted()) {
            for ($i=0; $i < count($nationalites); $i++) {
                ?>
                <option value="<?php echo $nationalites[$i]; ?>">
                <?php
            }
            ?>
            <?php
        } ?>
    </datalist>
    <div class="input-group">
      <span class="input-group-addon">Prénom  </span>
      <input name="personnesPrenom" id="prenom" type="text" required class="form-control" placeholder="Prénom">
    </div><br />

    <div class="input-group">
      <span class="input-group-addon">Nom </span>
      <input list="listNationalite" autocomplete="off" required name="personnesNom" type="text" class="form-control" placeholder="Nom">
    </div><br />


    <div class="input-group">
      <span class="input-group-addon">Date de naissance </span>
      <input  type="date" class="form-control" name="personnesDDN" required >
    </div><br />

    <div class="input-group">
      <span class="input-group-addon">Lieu de naissance </span>
      <input  type="text" class="form-control" placeholder="Lieu de naissance" checked name="personnesLDN" required >
    </div><br />

    <div class="input-group">
      <span class="input-group-addon">Nationalité </span>
      <input list="listNationalite" auto-complet="off" type="text" class="form-control" placeholder="Nationalité" checked name="personnesNationalite" required >
    </div><br />

    <div class="input-group">
        <span>Sexe </span>
        <input  type="radio" checked name="personnesSexe" value="M">
        <input  type="radio" name="personnesSexe" value="F">
    </div>

    <?php
}
function getFormJouer(){
    ?>
    <form action="" method="POST">
        <?php
            getAllInputsInfosPersonne();
        ?>
        <div class="input-group">
       <input type="submit" name="formJoueur" class="btn btn-info form-control" placeholder="">
    </div>
    </form>
    <?php
}
function displayPageFooter() {
    ?>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="owl.carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/hippo-offcanvas.js"></script>
        <script src="js/jquery.stellar.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/jquery.sticky-kit.min.js"></script>
        <script src="js/selectFx.js"></script>
        <script src="js/twitterFetcher_min.js"></script>
        <script src="js/jquery.mb.YTPlayer.js"></script>
        <script src="js/scripts.js"></script>
      </body>
    </html>
    <?php
}
?>
