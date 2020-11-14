<?php
/**
 *
 */
  require_once "classes/DataObject.class.php";
class Equipes extends DataObject
{
    protected $data = array(
        "idequipes"=>"",
        "equipesName"=>"",
        "equipesEmbleme"=>"",
        "equipesDrapeau"=>""
    );
    public static function getEquipe($idequipes){
      $conn = parent::connect();
      if($rep = $conn->query("SELECT * FROM ".TB_EQUIPES." WHERE idequipes='{$idequipes}'")->fetch()){
        return  new Equipes($rep);
      }
      return null;
    }
    public static function getEquipes(){
      $conn = parent::connect();
      if($rep = $conn->query("SELECT * FROM ".TB_EQUIPES)->fetchAll()){
          $equipes = array();
          foreach ($rep as $equipe) {
             $equipes[] =  new Equipes($equipe);
          }
        return  $equipes;
      }
      return null;
    }
    
    public static function getEquipeJoueurs($idequipe){
      $conn = parent::connect();
      if($rep = $conn->query("SELECT * FROM ".TB_JOUEURS." WHERE equipes_idequipes='{$idequipe}'")->fetchAll()){
        return  $rep;
      }
      return null;
    }

}

 ?>
