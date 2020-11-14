<?php
    session_start();
    require_once("config/loader.php");
    require_once("classes/DataObject.class.php");
    require_once("classes/Joueurs.class.php");
    require_once("classes/CommunDb.class.php");
    require_once("fonctions/commun.inc.php");
    /*
    $ddrp = scandir("img/drapeaux");
    $demblm = scandir("img/emblemes");
    $exep = array(".","..");
    for ($i=0; $i < count($ddrp) ; $i++) {
        if (!in_array($ddrp[$i],$exep)) {
            $drapeau = $ddrp[$i];
            $partsDrp = explode(".",$drapeau);
            $equipeName = implode(" ",explode("_",$partsDrp[0]));
            $goodEmblm="";
            for ($j=0; $j < count($demblm) ; $j++) {
                $embleme=$demblm[$j];
                $partsEmblm = explode(".",$embleme);
                if("embleme_".$partsDrp[0]==$partsEmblm[0]){
                    $goodEmblm=$embleme;
                    break;
                }

            }
        }

    }
    */
    displayPageHeader($titre);
        require_once($urlFile);
    displayPageFooter();
 ?>
