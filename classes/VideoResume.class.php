<?php

require_once("DataObject.class.php");

class VideoResume extends DataObject{
  protected $data = array(
    "idvideoResume" => "",
    "lienYoutube" => ""
  );
  public static function getVideoResume(){
    $conn = parent::connect();
if($req = $conn->query("SELECT * FROM ".TB_RENCONTRES)){
      $req ->fetchAll();
      $videoResume = array();
      if ($req) {
        foreach ($req as $row) {
          $videoResume[] = new videoResume($row);
        }
      }
      return $videoResume;
    }
    return null;
  }

  public static function getVideoResum($videoResume){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_RENCONTRES." ORDER BY 	idrencontres ASC LIMIT 1")->fetch()){
      return new VideoResume($req);
    }
  }

  public static function addVideoResume($lienYoutube){
    try {
     // echo "connexio...";
      $conn = parent::connect();
      //echo "connexion resuuit";
    } catch (Exception $e) {
      die("probleme d'accé a la base de donnée");
    }

    $requet = $conn->prepare("INSERT INTO ".TB_RENCONTRES." (lienYoutube) VALUES (:lienYoutube)");
    $requet -> execute(array(
      'lienYoutube' => $lienYoutube,
    ));
  }

























  //   $conn = parent::connect();
  //   if($req = $conn->query("SELECT * FROM ".TB_JOUEURS."
  //   INNER JOIN ".TB_PERSONNES." ON
  //     ".TB_JOUEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
  //   INNER JOIN ".TB_EQUIPES." ON
  //     ".TB_EQUIPES.".idequipes=".TB_JOUEURS.".equipes_idequipes
  //   WHERE ".TB_JOUEURS.".idjoueurs='{$idJoueurs}'
  //   ")->fetch()){
  //     return new Joueurs($req);
  //   }
  // }

}


?>
