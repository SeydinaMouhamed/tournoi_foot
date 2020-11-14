<?php

  /**
   *
   */
   require_once ("DataObject.class.php");

  class Matchs extends DataObject
  {

    protected $data = array();

    public static function getScores($idRencontre){

      $conn = parent::connect();

      if($req1 = $conn -> query("SELECT * FROM ".TB_RENCONTRES." WHERE idrencontres ='{$idRencontre}'")-> fetch()){
          $scoreA=0;
          $scoreB=0;

          $idequipes1 = $req1["rencontresIdEquipe1"];
          $idequipes2 = $req1["rencontresIdEquipe2"];

          if($req = $conn -> query("SELECT * FROM ".TB_EVENEMENTS."
                                    INNER JOIN ".TB_JOUEURS." ON ".TB_EVENEMENTS.".evenementsDestinationId=".TB_JOUEURS.".idjoueurs
                                    WHERE ".TB_EVENEMENTS.".rencontres_idrencontres='{$idRencontre}'
                                        AND ".TB_EVENEMENTS.".evenementsType='but'
                                        AND ".TB_EVENEMENTS.".evenementsDestination='joueurs'")-> fetchAll()){

              for ($i=0; $i <count($req) ; $i++) {
                $idwin = $req[$i]["equipes_idequipes"];
                if ($idwin == $idequipes1) {
                  $scoreA++;
                }else {
                  $scoreB++;
                }
              }
          }
          return array("equipe1" => array("score"=>$scoreA,"idequipe"=>$idequipes1),"equipe2" => array("score"=>$scoreB,"idequipe"=>$idequipes2));
       }
       return false;
    }

    public static function startMatch($idRencontre){
        return CommunDb::updateBd(TB_RENCONTRES,["rencontresEtat"],[ETAT_DEBUT1_MATCH],"idrencontres",$idRencontre);
    }

    public static function getEvenementsCompletJoueur($idJoueurs){

      $conn = parent::connect();

      $req1 = $conn -> query("SELECT * FROM evenements WHERE evenementsDestinationId='{$idJoueurs}' AND evenementsDestination = 'joueurs'") -> fetchAll(PDO::FETCH_ASSOC);

      $evenements = array();

      for ($i=0; $i < count($req1); $i++) {

        $evenement = $req1[$i]["evenementsType"];

        $trouve = false;

        for ($j=0; $j < count($evenements) ; $j++) {

          if ($evenement == $evenements[$i]) {

            $trouve = true;

          }

        }

       if(!$trouve) {

          $evenements[] = $evenement;

        }

      }

      return $evenements;
    }

    public static function getListeJoueursEquipe1Rencontre($idRencontre){
        $conn = parent::connect();
        if($rep = $conn->query("SELECT * FROM ".TB_RENCONTRES."
            INNER JOIN ".TB_JOUEURS_RENCONTRES." ON ".TB_JOUEURS_RENCONTRES.".rencontres_idrencontres=".TB_RENCONTRES.".idrencontres
            INNER JOIN ".TB_JOUEURS." ON ".TB_JOUEURS.".idjoueurs=".TB_JOUEURS_RENCONTRES.".joueurs_idjoueurs
            INNER JOIN ".TB_PERSONNES." ON ".TB_JOUEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes

            WHERE ".TB_RENCONTRES.".rencontresIdEquipe1=".TB_JOUEURS.".equipes_idequipes AND ".TB_RENCONTRES.".idrencontres='{$idRencontre}'
        ")->fetchAll()){
            return $rep;
        }
        return null;
    }
    public static function getListeJoueursEquipe2Rencontre($idRencontre){
        $conn = parent::connect();
        if($rep = $conn->query("SELECT * FROM ".TB_RENCONTRES."
            INNER JOIN ".TB_JOUEURS_RENCONTRES." ON ".TB_JOUEURS_RENCONTRES.".rencontres_idrencontres=".TB_RENCONTRES.".idrencontres
            INNER JOIN ".TB_JOUEURS." ON ".TB_JOUEURS.".idjoueurs=".TB_JOUEURS_RENCONTRES.".joueurs_idjoueurs
            INNER JOIN ".TB_PERSONNES." ON ".TB_JOUEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes

            WHERE ".TB_RENCONTRES.".rencontresIdEquipe2=".TB_JOUEURS.".equipes_idequipes AND ".TB_RENCONTRES.".idrencontres='{$idRencontre}'
        ")->fetchAll()){
            return $rep;
        }
        return null;
    }

    public static function getEvenementsElementInTournoi($idTournoi,$idElement,$elementTabName="joueurs"){

      $conn = parent::connect();

      if($req1 = $conn -> query("SELECT * FROM ".TB_EVENEMENTS."

                            INNER JOIN ".TB_RENCONTRES." ON ".TB_EVENEMENTS.".rencontres_idrencontres=".TB_RENCONTRES.".idrencontres

                            INNER JOIN ".TB_PHASES." ON ".TB_RENCONTRES.".phases_idphases=".TB_PHASES.".idphases

                            INNER JOIN ".TB_TOURNOIS." ON ".TB_PHASES.".tournois_idtournois=".TB_TOURNOIS.".idtournois

                            WHERE idtournois='{$idTournoi}' AND evenementsDestination='{$elementTabName}' AND evenementsDestinationId='{$idElement}'")->fetchAll() ){
            return $req1;
        }

        return  null;
    }

    public static function getEvenementsJoueur($idTournoi,$idJoueur){

      return getEvenementsElementInTournoi($idTournoi,$idJoueur);

    }

    public static function getEvenementsEntraineur($idTournoi,$idEntraineur){

      return getEvenementsElementInTournoi($idTournoi,$idEntraineur,TB_ENTRAINEURS);

    }

    public static function getEvenementsEquipe($idTournoi,$idEquipe){

      return getEvenementsElementInTournoi($idTournoi,$idEquipe,TB_EQUIPES);

    }

    public static function getEvenementsArbitre($idTournoi,$idArbitre){

      return getEvenementsElementInTournoi($idTournoi,$idArbitre,TB_ARBITRES);

    }

    public static function addevenement($evenementsType,$evenementsSourceId,$rencontres_idrencontres,$evenementsDestinationId,$evenementsSource='utilisateurs',$evenementsDestination='joueurs'){

      $conn = parent::connect();

      $req = $conn -> prepare("INSERT INTO evenements(evenementsType,evenementsSource,evenementsSourceId,rencontres_idrencontres,evenementsDestination,evenementsDestinationId)
                              VALUES(:evenementsType,:evenementsSource,:evenementsSourceId,:rencontres_idrencontres,:evenementsDestination,:evenementsDestinationId)");


      $req -> execute(array(

        'evenementsType' => $evenementsType,
        'evenementsSource' => $evenementsSource,
        'evenementsSourceId' => $evenementsSourceId,
        'rencontres_idrencontres' => $rencontres_idrencontres,
        'evenementsDestination' => $evenementsDestination,
        'evenementsDestinationId' => $evenementsDestinationId

      ));
    }

    public static function getStatusMatch($idrencontre){
        if($etatMatch = CommunDb::getMatchData(TB_RENCONTRES,[["idrencontres",$idrencontre]],"rencontresEtat")["rencontresEtat"]){
            switch ($etatMatch) {
                case ETAT_FIN1_MATCH:case ETAT_FIN1_PROL_MATCH:case ETAT_MATCH_PAUSE:case ETAT_FIN2_MATCH:
                    return MATCH_EN_PAUSE;
                break;
                case ETAT_MATCH_TERMINE:
                    return MATCH_TERMINE;
                break;
                default:
                    return MATCH_EN_COURS;
                break;
            }
        }
        return MATCH_NON_JOUER;
    }


    public static function getLevelMatch($idrencontre){
        if($etatMatch = CommunDb::getMatchData(TB_RENCONTRES,[["idrencontres",$idrencontre]],"rencontresEtat")["rencontresEtat"]){
            switch ($etatMatch) {
                case ETAT_DEBUT1_MATCH:
                    return ETAT_DEBUT1_MATCH;
                break;
                case ETAT_FIN1_MATCH:
                    return ETAT_FIN1_MATCH;
                break;
                case ETAT_DEBUT2_MATCH:
                    return ETAT_DEBUT2_MATCH;
                break;
                case ETAT_FIN2_MATCH:
                    return ETAT_FIN2_MATCH;
                break;
                case ETAT_DEB1_PROL_MATCH:
                    return ETAT_DEB1_PROL_MATCH;
                break;
                case ETAT_FIN1_PROL_MATCH:
                    return ETAT_FIN1_PROL_MATCH;
                break;
                case ETAT_DEB2_PROL_MATCH:
                    return ETAT_DEB2_PROL_MATCH;
                break;
                case ETAT_FIN2_PROL_MATCH:
                    return ETAT_FIN2_PROL_MATCH;
                break;
                case ETAT_DEB_TB_MATCH:
                    return ETAT_DEB_TB_MATCH;
                break;
                case ETAT_FIN_TB_MATCH:
                    return ETAT_FIN_TB_MATCH;
                break;
                default:
                    return ETAT_MATCH_TERMINE;
                break;
            }
        }
        return ETAT_DEBUT1_MATCH;
    }

  }
 ?>
