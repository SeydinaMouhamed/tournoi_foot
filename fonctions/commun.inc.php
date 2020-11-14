<?php
require_once("classes/CommunDb.class.php");
    function tr($val){
        if(!isset($_SESSION["lang"]) OR !in_array($_SESSION["lang"],DEFINED_LANGS)){ $_SESSION["lang"]=DEFAULT_LANG; }
        if(!in_array($_SESSION["lang"],array_keys($val))){
            echo $val[key($val)];
        }else {
            echo $val[$_SESSION["lang"]];
        }
    }

    function NOW($sepDate="-",$sepTime="-"){
      $y_m_d = date("Y".$sepDate.'m'.$sepDate."d "."H".$sepTime."i".$sepTime."s");
      return $y_m_d;

    }
    function moveImgInFolder($inputFileName,$directoryToUpload){
        $status=false;
        $outputData = array();
        $imgName="";
          if (isset($_FILES[$inputFileName]) AND $_FILES[$inputFileName]['error'] == 0)
          {
          	$prefix=$inputFileName;
          	if ($_FILES[$inputFileName]['size'] <= 1000000)
          	{
          		$types_autorise = ["image/png","image/jpeg","image/pjpeg","image/gif"];
              if(in_array($_FILES[$inputFileName]['type'],$types_autorise)){
                do{
          			$newFileName = $prefix.namewithdate("_");
          		}while(file_exists($directoryToUpload.$newFileName));
          		$infosfichier =pathinfo($_FILES[$inputFileName]['name']);
                $extension_upload = $infosfichier['extension'];
                $imgName=$newFileName.".".$extension_upload;
          			if(!move_uploaded_file($_FILES[$inputFileName]['tmp_name'], $directoryToUpload.$imgName)){
                        $errors[]="Echec de l'upload de l'image ".$inputFileName;
          			}else{
                        $status = true;
                        $outputData = $imgName;
                    }
          		}else{
                $errors[]="Type de fichier non prise en compte";
              }
            	}else{
                $errors[]="Image trop grande";
              }
            }else{
              $errors[]="Photo de profil non défini ou incorrect";
            }
            if(isset($errors)){
                $outputData = $errors;
            }
            return array(
                    "status"=>$status,
                    "imgName"=>$imgName,
                    "outputData"=>$outputData
            );
    }

    function normaliseDate($date,$sep="-"){
      $seps = ["-","/","."," ","_"];
      if(in_array($sep,$seps)){
        $date = explode($sep,trim($date));
        if(c_count($date)==3){
          if(strlen($date[0]==2) && strlen($date[2]==4) ){
            $tmp = $date[0];
            $date[0]=$date[2];
            $date[2]=$tmp;
          }
          return implode("-",$date);
        }
      }
      return false;
    }

    function isEmail($val){
    		if(preg_match("#^[a-z0-9._-]{2,50}[@][a-z0-9._-]{2,30}[.][a-z]{2,6}$#",$val)){
    			return $val;
    		}else{
    			return false;
    		}
    }

    function isNumberSN($val){
    	if(preg_match("#^[\(]?[+]?[ ]?([2]{2}[1])?[\)]?[ -]?[7][7860][ -]?[0-9]{3}([ -]?[0-9]{2}){2}$#",$val) OR preg_match("#^[\(]?[+]?[ ]?([2]{2}[1])?[\)]?[ -]?[3]{2}[ -]?[0-9]{3}([ -]?[0-9]{2}){2}$#",$val)){
    		return $val;
    	}else{
    		return false;
    	}
    }

    function getRelativeNextDate($nbrDays=1){
    	return date("Y-m-d",strtotime(date("Y-m-d")." + ".$nbrDays." days"));
    }

    function namewithdate($sep="-"){
      $y_m_d = date("Y".$sep.'m'.$sep."d".$sep."H".$sep."i".$sep."s");
      return $y_m_d;
    }

    function alertErrors($errors,$msgScces="Enregistrement effectué avec succes"){
       if(!empty($errors)){
          for($i= 0;$i <count($errors);$i++){
            ?>
            <div style="z-index:100000000;position:relative;width:100%;top:0px;" class="sectionInfos alert alert-danger page-alert" id="<?php echo "page-alert{$i}"; ?>">
              <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
              <center><?php echo $errors[$i]; ?></center>
            </div>
            <script type="text/javascript">
            //Close alert
               $('#<?php echo "page-alert{$i}"; ?> .close').click(function(e) {
                   e.preventDefault();
                   $(this).closest('.page-alert').slideUp();
               });
            </script>
            <?php
          }
      }else{
          ?>
          <div style="z-index: 100000000;position:relative;width:100%;top:0px;" class="sectionInfos alert alert-success page-alert">
            <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
            <center><?php echo $msgScces; ?></center>
          </div>
          <script type="text/javascript">
          //Close alert
             $('.page-alert .close').click(function(e) {
                 e.preventDefault();
                 $(this).closest('.page-alert').slideUp();
             });
          </script>
          <?php
        }
    }

    function displayPageHeader( $pageTitle ) {
        require_once("classes/Tournois.class.php");
        require_once("classes/Equipes.class.php");
        require_once("fonctions/web.inc.php");
        require_once("fonctions/event.inc.php");
        if(isset($_SESSION["compte"]) && ($_SESSION["compte"]=="reportairesEvenementsArbitre")){
            require_once("fonctions/event.inc.php");
        }
        ?>
        <!DOCTYPE html>
        <html lang="fr">
          <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title><?php echo $pageTitle; ?></title>

            <link rel="icon" type="image/png" href="img/logo-CAF.png" />
            <link href="fonts/flaticon/flaticon.css" rel="stylesheet">
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
            <link href="css/nifty.min.css" rel="stylesheet">
            <link href="css/demo/nifty-demo.min.css" rel="stylesheet">
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>

            <link href="js/clockpicker/dist/bootstrap-clockpicker.min.css" rel="stylesheet">
            <script src="js/clockpicker/dist/bootstrap-clockpicker.min.js"></script>


            <!--[if lt IE 9]>
              <script src="js/html5shiv.js"></script>
              <script src="js/respond.min.js"></script>
            <![endif]-->

          </head>
          <body>
            <?php
            if(isset($_POST["login"])){
                require_once("traitements/login.php");
            }
            getAboutCAF();
            if(!isset($_SESSION["compte"])){
                getFormLogin();
            }else if($_SESSION["compte"]=="admin"){
                getFormEntraineur();
            }
            getFormAddCartonJaune();
            getFormAddCartonRouge();
            ?>
            <div id="st-container" class="st-container">
                <div class="st-pusher">
                    <div class="st-content">
                        <?php
    }

    function br($string=""){
      echo $string."<br />";
    }

    function c_count($val,$cast = "int"){
      switch ($cast) {
        case 'int':
          return (int)count($val);
        break;
        case 'float':
          return (float)count($val);
        default:
          return (int)count($val);
        break;
      }
    }
    function sendInfosConnectionToEntraineur($to,$prenom,$nom,$pseudo,$password,$tournoiName){
		$subject = "Informations de connexion pour la ".$tournoiName;
		$link = LINK_WEB_SITE."index.php?page=accueil";
		  $messages="
			<html>
			  <head>
				<title>Informations de connexion pour la ".$tournoiName."</title>
			  </head>
			  <body>
				<h1> Bonjour, Mr ".$nom."</h1>
				<p>
                    La CAF vous félicite de devoir participer à la ".$tournoiName." !!!<br />
                    ci-dessous, vos Informations de connexion<br />
                SITE WEB : ".$link."<br />
				LOGIN<br /><br />
				<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pseudo: </b>".$pseudo."<br />
				<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mot de passe: </b>".$password."<br /><br /><br />
				</p>
			  </body>
			</html>
		  ";
		  $headers ="MIME-Version : 1.0"."\r\n";
		  $headers .="Content-type:text/html; charset=utf-8";
		  return mail($to,$subject,$messages,$headers);
	}
    function getNationalitiesRegisted(){
        return CommunDb::getAllNationality();
    }

    function tuple_exist($table,$tabCondition,$op=" AND ",$getQuery = false,$champs = "*"){
        return CommunDb::verify($table,$tabCondition,$op,$getQuery,$champs);
    }

    function _hash($val){
            return sha1($val);
    }

    function secure($val){
        return htmlspecialchars(trim($val));
    }

    function getFormLogin(){
        ?>
        <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center>
                    <h1 class="modal-title" id=""><i class="fa fa-lock"></i> <?php tr(menuLogin); ?></h1>
                </center>
              </div>
              <div class="modal-body">
                  <form class="" action="" method="post">
                      <input type="text" name="identifiant" class="form-control" value="" required placeholder="<?php tr(formIdentifiant); ?>"><br />
                      <input type="password" name="password" class="form-control" value="" required placeholder="<?php tr(formPassword); ?>"><br /><hr>
                      <input type="submit" name="login" class="btn btn-info  form-control" value="<?php tr(menuLogin); ?>">
                  </form>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
        <?php
    }

    function getFormEntraineur(){
        ?>
        <div class="modal fade" id="formAddEntraineur" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id=""><center>AJOUT ENTRAINEUR</center></h4>
              </div>
              <div class="modal-body">
                  <form class="" action="" method="post">
                      <fieldset>
                            <legend><center>
                                Informations personnelles de l'entraineur</legend>
                            </center>
                            <?php
                                getAllInputsInfosPersonne();
                             ?>
                      </fieldset>
                      <fieldset>
                              <legend>Informations Compte</legend>
                              <div class="input-group">
                                  <span class="input-group-addon">Email </span>
                                <input type="email"  class="form-control" placeholder="Adresse email" name="utilisateursEmail" value="<?php echo "$email"; ?>" required />
                              </div>
                              <div class="input-group">
                                <span class="input-group-addon">Photo profil </span>
                                <input type="file" class="form-control" name="utilisateursPhoto" value="<?php echo "$profil"; ?>" required />
                              </div>
                      </fieldset>
                          <br>
                          <fieldset>
                              <legend>Autres Informations</legend>
                              <table>

                                  <tr>
                                      <td> Numero Licence</td>
                                      <td> <input type="text" name="entraineursLicence" value="<?php echo "$licence"; ?>" required> </td>
                                  </tr>
                              </table>
                          </fieldset>

                  </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">FERMER</button>
              </div>
            </div>
          </div>
        </div>
        <?php
    }

    function getAboutCAF(){
        ?>
        <div class="modal fade" id="aboutCAF" tabindex="-1"role="dialog" aria-labelledby="" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="">A propos de CAF</h4>
              </div>
              <div class="modal-body">
                <p style="text-align: center;">
                    <span style="font-family: Tahoma;">
                        <img alt="" src="img/logo-CAF.png" style="width: 240px; height: 221px;"><br>
                    </span>
                </p>
                <p style="text-align: justify;"><span>La CAF, organisation faîtière du football africain, a été fondée en 1957 par quatre pays, l’Egypte, le S</span><span>oudan, l’Ethiopie et l’Afrique du Sud. L’organisation compte 54 membres et a son siège au Caire en Egypte.</span></p>
                <p style="text-align: justify;"><span>Les bases de la création de la CAF ont été jetées au mois de juin 1956 à Lisbonne, au Portugal, alors que la capitale portugaise accueillait le congrès de la FIFA auquel participait les quatre pays en question.&nbsp; Ces derniers conviendront d’une rencontre à Khartoum au mois de février 1957 pour élaborer les statuts et porter sur les fonts baptismaux la Coupe d’Afrique des Nations.</span></p>
                <p style="text-align: justify;"><span>Dès le congrès de la Fifa à Berne en 1954, il avait été reconnu à l’Afrique la capacité de se constituer en Confédération. Ce qui avait déjà permis au continent d’avoir son premier représentant au Comité exécutif de la Fifa en la personne de l’Egyptien Abdelaziz Abdallah Salem.</span></p>
                <p style="text-align: justify;"><span>L’acte de naissance de la CAF fut signé le 8 février 1957 à Khartoum, au Soudan, et Abdelaziz Abdallah Salem en fut nommé président.</span></p>
                <p style="margin-top: 7.5pt; text-align: justify;"><span>Le 10 février 1957, après l’assemblée constitutive de la Caf, débuta la première Coupe d’Afrique des Nations qui se déroula dans la capitale soudanaise. L’Egypte en sera le premier vainqueur.</span></p>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">FERMER</button>
              </div>
            </div>
          </div>
        </div>
        <?php
    }

    function getAllInputsInfosPersonne(){
        ?>
        <datalist id="listNationalite"><?php
            if ($nationalites = getNationalitiesRegisted()){
                for ($i=0; $i < count($nationalites); $i++) {
                    ?>
                        <option value="<?php echo $nationalites[$i]; ?>">
                    <?php
                }
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

    function displayCopy(){
        ?>
        <footer class="copyright-section">
            <div class="container">
                <div class="copyright-info">
                    <span>Copyright © 2018 CAF</span>
                </div>
            </div>
        </footer>
        <?php
    }

    function displayMatchSem(){
        ?>
        <div class="offcanvas-menu offcanvas-effect">
            <div class="offcanvas-wrap">
                <div class="off-canvas-header">
                    <button type="button" class="close" aria-hidden="true" data-toggle="offcanvas" id="off-canvas-close-btn">&times;</button>
                </div>
                <div class="offcanvas-widgets hidden-sm hidden-xs">
                    <h3 style="color:white"><u>Les match de la semaine</u></h3>
                    <!-- IMPLEMENTATION MATCH DE LA SEMAINE -->
                </div>
            </div>
        </div>
        <?php
    }

    function showLastMatch(){
        ?>
        <div class"col">
            <center>

            <h2>Resumé Dernier </h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/CVMtqkKOR90" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </center>
        </div>
        <hr>
    <?php
    }
    function showNews(){ ?>
         <section class="container-fluid news" id="news">
            <div class="container">
                <center>
                    <h1 id="news">Actualite</h1>
                </center>
                <hr class="separator" width="5%">
                <div class="row">
                    <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <h2>Titre News 1</h2>
                        <div>
                            <img src="img/bg/tof2.jpg" class="tofNews">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                enim ad minim veniam, quis nostrud exercitation ullamco laboris nisiut
                                aliquip ex ea commodo consequat.</p>
                        </div>
                    </article>

                    <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <h2>Titre news 2</h2>
                        <div>
                            <img src="img/bg/tof3.jpg" class="tofNews">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                enim ad minim veniam, quis nostrud exercitation ullamco laboris nisiut
                                aliquip ex ea commodo consequat.</p>
                        </div>
                    </article>

                    <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <h2>Titre News 3</h2>
                        <div>
                            <img src="img/bg/tof4.jpg" class="tofNews">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                enim ad minim veniam, quis nostrud exercitation ullamco laboris nisiut
                                aliquip ex ea commodo consequat.</p>
                        </div>
                    </article>
                </div>
            </div>
        </section><hr>
    <?php
    }

    function displayPageFooter(){
                displayCopy();
            ?>
            </div>
        </div>
        <?php
        if((isset($_SESSION["compte"]) && ($_SESSION["compte"]!="reportairesEvenementsJoueur" && $_SESSION["compte"]!="reportairesEvenementsArbitre") ) || !isset($_SESSION["compte"])){
            displayMatchSem();
        }
        ?>
    </div>


    <script type="text/javascript">
    $('.clockpicker').clockpicker();
    </script>
    <script src="js/jquery.easing.min.js"></script>
        <script src="css/owl.carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/hippo-offcanvas.js"></script>
        <script src="js/jquery.stellar.js"></script>
        <script src="js/jquery.bootstrap.wizard.min.js"></script>
        <script src="js/nifty.min.js"></script>
        <script src="js/bootstrap-validator/bootstrapValidator.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/jquery.sticky-kit.min.js"></script>
        <script src="js/selectFx.js"></script>
        <script src="js/twitterFetcher_min.js"></script>
        <script src="js/jquery.mb.YTPlayer.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/demo/form-wizard.js"></script>
        <script src="js/clockpicker/bootstrap-clockpicker.min.js"></script>


          </body>
    </html>
    <?php
}
?>
