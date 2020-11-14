<?php
if($_POST["login"]){
    if(isset($_POST["identifiant"],$_POST["password"])){
        $identifiant = secure($_POST["identifiant"]);
        $password = _hash($_POST["password"]);
        if($typeDeCompte = tuple_exist(TB_UTILISATEURS,[["utilisateursPseudo",$identifiant],["utilisateursPassword",$password],["utilisateursEtat",1]]," AND ",true,"utilisateursTypeDeCompte,utilisateursPseudo,idutilisateurs")){
            $_SESSION["userId"] = $typeDeCompte["idutilisateurs"];
            $_SESSION["pseudo"] = $typeDeCompte["utilisateursPseudo"];
            $typeDeCompte = $typeDeCompte["utilisateursTypeDeCompte"];
            switch ($typeDeCompte) {
                case 'organisateurs':
                    $_SESSION["compte"]="admin";
                    break;

                default:
                    $_SESSION["compte"]=$typeDeCompte;
                    break;
            }
            header("Location:index.php");

        }else{
            alertErrors(array("Pseudo ou mot de passe incorrect"));
        }
    }
}
?>
