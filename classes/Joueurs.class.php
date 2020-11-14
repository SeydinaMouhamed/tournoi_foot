<?php
/**
 *
 */
 require_once "classes/DataObject.class.php";
class Joueurs extends DataObject{
  protected $data = array(
    "idjoueurs" => "",
    "joueursTaille" => "",
    "joueursPied" => "",
    "joueursPoids" => "",
    "joueursLicence" => "",
    "joueursPoste" => "",
    "equipes_idequipes" => "",
    "joueursPhotoProfil" => "",
    "personnesNom" => "",
    "personnesPrenom" => "",
    "personnesSexe" => "",
    "personnesDDN" => "",
    "personnesLDN" => "",
    "nomEquipe" => "",
    "equipesName"=>"",
    "equipesDrapeau"=> "",
    "personnesNationalite"=>""
  );
  public static function getJoueur($idJoueurs){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_JOUEURS."
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_JOUEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    INNER JOIN ".TB_EQUIPES." ON
      ".TB_EQUIPES.".idequipes=".TB_JOUEURS.".equipes_idequipes
    WHERE ".TB_JOUEURS.".idjoueurs='{$idJoueurs}'
    ")->fetch()){
      return new Joueurs($req);
    }
  }
  public static function getJoueurs(){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_JOUEURS."
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_JOUEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    INNER JOIN ".TB_EQUIPES." ON
      ".TB_EQUIPES.".idequipes=".TB_JOUEURS.".equipes_idequipes ORDER BY personnesNom
    ")->fetchAll()){
        $joueurs = array();
        foreach ($req as $joueur) {
           $joueurs[] =  new Joueurs($joueur);
        }
      return  $joueurs;
    }
  }
  public function isCorrectFormJoueur(){
      if(isset($_REQUEST["joueursTaille"],$_REQUEST["joueursPied"],$_REQUEST["joueursLicence"],$_REQUEST["joueursPoste"],
               $_REQUEST["joueursPhotoProfil"],$_FILES["joueursPhotoProfil"],$_REQUEST["personnesNom"],
               $_REQUEST["personnesPrenom"],$_REQUEST["personnesSexe"],$_REQUEST["personnesDDN"],$_REQUEST["personnesLDN"]
        )){
            $joueursTaille = htmlspecialchars($_REQUEST["joueursTaille"]);
            $joueursPied = htmlspecialchars($_REQUEST[""]);
            //$joueursPied =

      }
  }
  public static function addJoueur(){
      if(isCorrectFormJoueur()){

      }
  }

}


?>
