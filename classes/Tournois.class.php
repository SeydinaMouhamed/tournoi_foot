<?php

/**
 * GESTION DE LA TABLE TOURNOI
 */
 require_once("classes/DataObject.class.php");
 require_once("classes/CommunDb.class.php");
class Tournois extends DataObject{
    protected $data = array(
        "idtournois"=>"",
        "tournoisName"=>"",
        "tournoisImgPub"=>"",
        "tournoisDateDebut"=>"",
        "tournoisDateFin"=>"",
        "tournoisApropos"=>"",
        "tournoisEtapeCreation"=>"",
        "tournoisPaysOrganisateur"=>"",
        "tournoisOrganisateur"=>"",
        "id_equipe"=>""
    );
    public static function getTournoi($idTournoi){
        $conn = parent::connect();
        if($req = $conn->query("SELECT * FROM ".TB_TOURNOIS." WHERE idtournois='{$idTournoi}' ")->fetch()){
            return new Tournois($req);
        }
        return null;
    }
    public static function getTournois(){
        $conn = parent::connect();
        if($rep = $conn->query("SELECT * FROM ".TB_TOURNOIS." ORDER BY idtournois DESC ")->fetchAll()){
            $tournois = array();
            foreach ($rep as $result) {
                $tournois[] = new Tournois($result);
            }
            return $tournois;
        }
        return null;
    }
    public static function getSelectedEquipesOnTournoi($idtournoi){

        $conn = parent::connect();
        if($rep = $conn->query("SELECT id_equipe FROM ".TB_TOURNOIS_EQUIPE_ENTRAINEUR." WHERE id_tournoi='{$idtournoi}'")->fetchAll()){
            $selectedEquipes = array();
            foreach ($rep as $result) {
                $selectedEquipes[] = new Tournois($result);
            }
            return $selectedEquipes;
        }
        return null;
    }
    public static function getSelEqOnTourID_ArrayFormat($idTournoi){
        $selected = array();
        if($sels = Tournois::getSelectedEquipesOnTournoi($idTournoi)){
            for ($i=0; $i < count($sels); $i++) {
                $selected[] = $sels[$i]->getValueEncoded("id_equipe");
            }
        }
        return $selected;
    }
    private function addTournoiExec($name,$imgpub,$debut,$apropos){
       $conn = parent::connect();
       $req = $conn ->prepare("INSERT INTO tournois(tournoisName,tournoisImgPub,tournoisDateDebut,tournoisApropos)
                                VALUES (:name,:imgpub,:debut,:apropos) ");
       return $req -> execute(array(
          "name" => $name,
          "imgpub" => $imgpub,
          "debut" => $debut,
          "apropos" => $apropos
       ));

    }
    public static function addTournoi(){
        $status = false;
        $receved = array();
        $msg=array();
        if(isset($_POST["addTournoi"])){
            if(isset($_POST["tournoisName"],$_FILES["tournoisImgPub"],$_POST["tournoisDateDebut"],$_POST["tournoisApropos"])){
                  $receved = $_POST;
                  $name = secure($_POST["tournoisName"]);
                  $imgpub = secure($_FILES["tournoisImgPub"]["name"]);
                  $debut = secure($_POST["tournoisDateDebut"]);
                  $apropos = secure($_POST["tournoisApropos"]);
                  if (!empty($name) && !empty($imgpub) && !empty($debut) && !empty($apropos) ){
                      if(!CommunDb::verify(TB_TOURNOIS,[["tournoisName",$name]])){
                          $tryToMoveImgPub = moveImgInFolder("tournoisImgPub",PATH_PUB_TOURNOI);
                          if($tryToMoveImgPub["status"]){
                              if($trnAdd = Tournois::addTournoiExec($name,$tryToMoveImgPub["imgName"],$debut,$apropos)){
                                  $status = true;
                                  $msg = "Tournoi enregistré avec succes !!!";

                              }else{
                                  $msg[] ="Echec de l'enregistrement du tournoi !!!";
                              }
                          }else{
                              $msg= array_merge($msg,$tryToMoveImgPub["outputData"]);
                          }
                      }else{
                          $msg[]="Un tournoi de même nom est déja enregistré";
                      }
                  }else{
                      $msg[]="Aucune valeur ne doit etre vide";
                  }
            }else{

                $msg[]="Formulaire corrompu !!!";
            }
        }

        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
          );
    }
    private function updateTournoiExec($idtournoi,$name,$imgpub,$debut,$apropos){
        $rep = CommunDb::updateBd(TB_TOURNOIS,["tournoisName","tournoisDateDebut","tournoisApropos"],[$name,$debut,$apropos],"idtournois",(int)$idtournoi);
        if($imgpub){
            CommunDb::updateBd(TB_TOURNOIS,["tournoisImgPub"],[$imgpub],"idtournois",(int)$idtournoi);
        }
        return $rep;
    }
    public static function updateTournoi(){
        $status = false;
        $receved = array();
        $msg=array();
        if(isset($_POST["updateTournoi"])){
            if(isset($_POST["idtournois"],$_FILES["tournoisImgPub"],$_POST["tournoisName"],$_POST["tournoisDateDebut"],$_POST["tournoisApropos"])){
                  $receved = $_POST;
                  $name = secure($_POST["tournoisName"]);
                  $debut = secure($_POST["tournoisDateDebut"]);
                  $apropos = secure($_POST["tournoisApropos"]);
                  $apropos = secure($_POST["tournoisApropos"]);
                  $idtournoi = secure($_POST["idtournois"]);
                  $imgpub = secure($_FILES["tournoisImgPub"]["name"]);
                  if (!empty($idtournoi) && !empty($name) && !empty($debut) && !empty($apropos) ){
                      if(!empty($imgpub)){
                          $tryToMoveImgPub = moveImgInFolder("tournoisImgPub",PATH_PUB_TOURNOI);
                          if($tryToMoveImgPub["status"]){
                              if(Tournois::updateTournoiExec($idtournoi,$name,$tryToMoveImgPub["imgName"],$debut,$apropos)){
                                  $status = true;
                                  $msg = "Modification effectué avec succes !!!";
                              }else{
                                  $msg[] ="Echec de l'enregistrement des modifications !!!";
                              }
                          }else{
                              $msg= array_merge($msg,$tryToMoveImgPub["outputData"]);
                          }
                      }else{
                          if(Tournois::updateTournoiExec($idtournoi,$name,"",$debut,$apropos)){
                              $status = true;
                              $msg = "Modification effectué avec succes !!!";
                          }else{
                              $msg[] ="Echec de l'enregistrement des modifications !!!";
                          }
                      }
                  }else{
                      $msg[]="Aucune valeur sauf l'image pub ne doit etre vide !!!";
                  }
            }else{

                $msg[]="Formulaire corrompu !!!";
            }
        }

        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
          );
    }
    public static function addEquipesParticipant(){
        $status = false;
        $receved = array();
        $msg=array();
        if(isset($_POST["equipesTournoi"])){
            if(isset($_POST["equipes"],$_POST["id_tournoi"])){
                $equipes=$_POST["equipes"];
                if(count($equipes)<=NBR_MAX_EQUIPES){
                    $idtournoi = intval($_POST["id_tournoi"]);
                    $nbr = 0;
                    if(CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idtournoi]],"tournoisEtapeCreation")["tournoisEtapeCreation"]<3){
                        CommunDb::execute("DELETE FROM ".TB_TOURNOIS_EQUIPE_ENTRAINEUR." WHERE id_tournoi='{$idtournoi}'");
                        for ($i=0; $i < count($equipes) ; $i++) {
                            $thisIdEquipe = intval($equipes[$i]);
                            $nbrEquipesSelected =count(CommunDb::getAllMatchData(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournoi]]));
                            if($nbrEquipesSelected<NBR_MAX_EQUIPES){
                                if(!CommunDb::verify(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournoi],["id_equipe",$thisIdEquipe]])){
                                    CommunDb::registreToBdd(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournoi],["id_equipe",$thisIdEquipe]]);
                                $nbr++;
                            }
                            }else{
                                $msg[]="Attention, l'équipe n° $thisIdEquipe n'est pas enregistrée!!!";
                            }
                        }
                        if(($nbr==count($equipes)) || ($nbr==NBR_MAX_EQUIPES)){
                            $msg="Enregistrement de $nbr equipes sur ".NBR_MAX_EQUIPES;
                            $status=true;
                        }
                        if (NBR_MAX_EQUIPES==$nbrEquipesSelected = count(CommunDb::getAllMatchData(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournoi]]))) {
                            CommunDb::updateBd(TB_TOURNOIS,["tournoisEtapeCreation"],[2],"idtournois",$idtournoi);
                        }else{

                            CommunDb::updateBd(TB_TOURNOIS,["tournoisEtapeCreation"],[1],"idtournois",$idtournoi);
                        }
                    }else{
                        $msg[] = "Vous êtes à une etape de création qui fait que vous n'êtes plus autorisés à effectuer <br />des modifications sur la sélection des équipes.<br />veuillez contacter l'adminstrteur<br /> ";
                    }

                }else{
                    $msg[] = "Vous devez enregistrer au maximun ".NBR_MAX_EQUIPES." équipes";
                }
            }else{
                $msg[] = "Formulaire corrompu !!! ";
            }
        }
        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
          );
    }
    public static function isUniqueSelection($array){
        $trouves=array();
        for ($j=0; $j < count($array); $j++) {
            if(in_array($array[$j],$trouves) && !empty($array[$j])){
                return false;
            }
            $trouves[]=$array[$j];
        }
        return true;
    }
    public static function allArbitresAreCorrectlyRegisted($data){
        $listIdArbitres= array();
        for ($i=0; $i < NBR_MATCH_TOURNOI; $i++) {
            if(isset($data["arbitre".$i])){
                $thisTbAbitre = $data["arbitre".$i];
                if(Tournois::isUniqueSelection($thisTbAbitre)){
                    $nbrCorrect=0;
                    for ($j=0; $j < count($thisTbAbitre) ; $j++) {
                        if($thisTbAbitre[$j]){
                            $listIdArbitres[] = $thisTbAbitre[$j];
                            $nbrCorrect ++;
                        }
                    }
                    if(!$nbrCorrect){
                        return false;
                    }
                }else{
                    return false;
                }
            }else{
                return false;
            }
        }
        return $listIdArbitres;
    }

    public function allDateOccupationStadeCorrect($data){
        if(isset($data["date"],$data["heure"],$data["stade"])){
            $dates = $data["date"];
            $times = $data["heure"];
            $stades = $data["stade"];
            for ($i=0; $i < NBR_MATCH_TOURNOI-1; $i++) {
                $currentStade = $stades[$i];
                $currentDateTime = new DateTime($dates[$i]." ".$times[$i]);
                for ($j=$i+1; $j < NBR_MATCH_TOURNOI; $j++) {
                    if($stades[$j]==$currentStade){
                        $otherDate = new DateTime($dates[$j]." ".$times[$j]);
                        $dif = $currentDateTime->diff($otherDate);
                        if($dif->y==0 && $dif->m==0 && $dif->d==0 && $dif->h<NBR_MAX_INTERVALLE_OCCUPATION_STADE){
                            return false;
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }
    public function allDatesPhaseGrpInfAllDatesPhaseFinale($data){
        if(isset($data["date"])){
            $dates = $data["date"];
            for ($i=0; $i < NBR_MATCHS_PHASE_POULES; $i++){
                $poulesDate = new DateTime($dates[$i]);
                for ($j=NBR_MATCHS_PHASE_POULES; $j < NBR_MATCH_TOURNOI ; $j++) {
                    $finalesDate = new DateTime($dates[$j]);
                    if($finalesDate<=$poulesDate){
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
    public function allDatesQrtFinalInfAllOtherDateFinale($data){
        if(isset($data["date"])){
            $dates = $data["date"];
            for ($i=NBR_MATCHS_PHASE_POULES; $i < NBR_MATCHS_PHASE_POULES+NBR_MATCH_QRT_FINALE; $i++){
                $qrtDate = new DateTime($dates[$i]);
                for ($j=NBR_MATCHS_PHASE_POULES+NBR_MATCH_QRT_FINALE; $j < NBR_MATCH_TOURNOI ; $j++) {
                    $otherFinaleDate = new DateTime($dates[$j]);
                    if($otherFinaleDate<=$qrtDate){
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
    public function allDatesDmFinalInfAllOtherDateFinale($data){
        if(isset($data["date"])){
            $dates = $data["date"];
            for ($i=NBR_MATCHS_PHASE_POULES+NBR_MATCH_QRT_FINALE; $i < NBR_MATCHS_PHASE_POULES+NBR_MATCH_QRT_FINALE+2; $i++){
                $dmfDate = new DateTime($dates[$i]);
                for ($j=NBR_MATCHS_PHASE_POULES+NBR_MATCH_QRT_FINALE+2; $j < NBR_MATCH_TOURNOI ; $j++) {
                    $otherFinaleDate = new DateTime($dates[$j]);
                    if($otherFinaleDate<=$dmfDate){
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
    public function dateToisiemePlaceInfDateFinale($data){
        if(isset($data["date"])){
            $dates = $data["date"];
            if(isset($dates[NBR_MATCH_TOURNOI-1],$dates[NBR_MATCH_TOURNOI-2])){
                $dateFinale=new DateTime($dates[NBR_MATCH_TOURNOI-1]);
                $dateTrmPlace = new DateTime($dates[NBR_MATCH_TOURNOI-2]);
                if($dateFinale>$dateTrmPlace){
                    return true;
                }
            }
        }
        return false;
    }

    public function allDateAreAfterBeginDate($idTournoi,$data){
        if(isset($data["date"])){
            $dates = $data["date"];
            if($dateDebutTournoi = CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]],"tournoisDateDebut")["tournoisDateDebut"]){
                $debTournoi = new DateTime($dateDebutTournoi);
                for ($i=0; $i <count($dates) ; $i++){
                    $dateMatch = new DateTime($dates[$i]);
                    if($debTournoi>$dateMatch){
                        return false;
                    }
                }
            }
            return true;
        }else{
            return false;
        }
    }

    public function allArbitreExistInBd($listIdArbitres){
        for ($i=0; $i < count($listIdArbitres) ; $i++) {
            if(!CommunDb::getMatchData(TB_ARBITRES,[["idarbitres",$listIdArbitres[$i]]])){
                return false;
            }
        }
        return true;
    }
    public static function updateDateFinTournoi($idTournoi,$newDateEnd){
        CommunDb::updateBd(TB_TOURNOIS,["tournoisDateFin"],[$newDateEnd],"idtournois",$idTournoi);
    }
    function updatePaysOrganisateur(){
        $status = false;
        $receved = array();
        $msg=array();
        if(isset($_POST["selectPaysOrganisateur"])){
            if(isset($_POST["paysOrganisateur"],$_POST["idTournoi"])){
                $idTournoi = intval($_POST["idTournoi"]);
                $idPaysOrganisateur = intval($_POST["paysOrganisateur"]);
                if(CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]]) && CommunDb::getMatchData(TB_EQUIPES,[["idequipes",$idPaysOrganisateur]])){
                    if(CommunDb::updateBd(TB_TOURNOIS,["tournoisOrganisateur"],[$idPaysOrganisateur],"idtournois",$idTournoi)){
                        $status=true;
                        $msg = "Pays organisateur enregistré avec succes";
                    }else{
                        $msg[]="Echec de l'enregistrement du pays organisateur";
                    }
                }else{
                    $msg[]="Tournoi ou pays d'organisatiou innexistant";
                }
            }else{
                $msg[]="Formulaire corrompu";
            }
        }
        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
          );
    }

    public static function getTournoisForEquipe($userId){
        if($result = CommunDb::query("SELECT * FROM ".TB_TOURNOIS_EQUIPE_ENTRAINEUR." INNER JOIN
        ".TB_EQUIPES." ON ".TB_TOURNOIS_EQUIPE_ENTRAINEUR.".id_equipe=".TB_EQUIPES.".idequipes
        INNER JOIN ".TB_TOURNOIS." ON ".TB_TOURNOIS_EQUIPE_ENTRAINEUR.".id_tournoi=".TB_TOURNOIS.".idtournois
        INNER JOIN ".TB_ENTRAINEURS." ON ".TB_ENTRAINEURS.".identraineurs=".TB_TOURNOIS_EQUIPE_ENTRAINEUR.".id_entraineur
        WHERE ".TB_ENTRAINEURS.".utilisateurs_idutilisateurs=$userId "
        )->fetchAll()){
        }
        var_dump($result);
    }
    public static function addArbtresRencontre($idRencontre,$tabArbitres){
        if(CommunDb::getMatchData(TB_ARBITRES_RENCONTRES,[["rencontres_idrencontres",$idRencontre]])){
            CommunDb::execute("DELETE FROM ".TB_ARBITRES_RENCONTRES." WHERE rencontres_idrencontres='{$idRencontre}'");
        }
        for ($i=0; $i <count($tabArbitres) ; $i++){
            if($tabArbitres[$i]){
                CommunDb::registreToBdd(TB_ARBITRES_RENCONTRES,[["rencontres_idrencontres",(int)$idRencontre],["arbitres_idarbitres",(int)$tabArbitres[$i]]]);
            }
        }
    }
    public static function createPlaning(){
        $status = false;
        $receved = array();
        $msg=array();
        if (isset($_POST["createPlaning"])) {

            if(isset($_POST["idTournoi"],$_POST["rencontre"],$_POST["idPhases"],$_POST["date"],$_POST["heure"],$_POST["stade"])){
                $idTournoi = intval($_POST["idTournoi"]);
                if($infosTournoi = CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]])){
                    if($infosTournoi["tournoisEtapeCreation"]<=4){
                        $nbrChamps = min(count($_POST["rencontre"]),count($_POST["idPhases"]),count($_POST["date"]),count($_POST["heure"]),count($_POST["stade"]));
                        if($nbrChamps==NBR_MATCH_TOURNOI){
                            if(Tournois::allDateAreAfterBeginDate($idTournoi,$_POST)){
                                if($listeArbitres = Tournois::allArbitresAreCorrectlyRegisted($_POST)){
                                    if(Tournois::allArbitreExistInBd($listeArbitres)){
                                        if(Tournois::allDateOccupationStadeCorrect($_POST)){
                                            if(Tournois::allDatesPhaseGrpInfAllDatesPhaseFinale($_POST)){
                                                if(Tournois::allDatesQrtFinalInfAllOtherDateFinale($_POST)){
                                                    if(Tournois::allDatesDmFinalInfAllOtherDateFinale($_POST)){
                                                        if(Tournois::dateToisiemePlaceInfDateFinale($_POST)){
                                                            for ($i=0; $i < $nbrChamps; $i++) {
                                                                $recontreId =intval($_POST["rencontre"][$i]);
                                                                if($i==0){
                                                                    $date = CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]],"tournoisDateDebut")["tournoisDateDebut"];
                                                                }else{
                                                                    $date = secure($_POST["date"][$i]);
                                                                }
                                                                $heure =secure($_POST["heure"][$i]);
                                                                $dateRencontre = $date." ".$heure.":00";
                                                                $idstade=intval($_POST["stade"][$i]);
                                                                $tabArbitres = $_POST["arbitre".$i];
                                                                Tournois::addArbtresRencontre($recontreId,$tabArbitres);
                                                                $arbitreCentral = intval($tabArbitres[0]);
                                                                if(CommunDb::updateBd(TB_RENCONTRES,["stades_idstades","rencontresDate","rencontresArbitre"],
                                                                                                    [$idstade,$dateRencontre,$arbitreCentral],"idrencontres",$recontreId)){
                                                                    if(CommunDb::updateBd(TB_TOURNOIS,["tournoisEtapeCreation"],[4],"idtournois",$idTournoi)){
                                                                        $msg = "planing enregistré avec succes";
                                                                        $status=true;
                                                                    }else{
                                                                        $msg[]="Echec du changement d'étape de création du tournoi";
                                                                    }
                                                                }else{
                                                                    $msg[]="Echec de la modification du planing";
                                                                }
                                                            }
                                                            Tournois::updateDateFinTournoi($idTournoi,$_POST["date"][NBR_MATCH_TOURNOI-1]);
                                                        }else{
                                                            $msg[]="La date du match de classement doit précéder la date finale";
                                                        }
                                                    }else{
                                                        $msg[]="Les matchs demi finale doivent précéder le match de classement et le match finale";
                                                    }
                                                }else{
                                                    $msg[]="Les matchs de quarts de finale doivent précéder les matchs 1/2 finale et le match finale ";
                                                }
                                            }else{
                                                $msg[]="Les matchs de groupes doivent précéder les matchs finale";
                                            }
                                        }else{
                                            $msg[]="Stade non disponible";
                                        }
                                    }else{
                                        $msg[]="Attention, il existe un arbitre non enregistré";
                                    }
                                }else{
                                    $msg[]="Un arbitre ne peut pas être seletionné deux fois dans le même match";
                                }
                            }else{
                                $msg[]="Aucune rencontre ne doit être antérieur à la date de début du tournoi";
                            }
                        }else{
                            $msg[]= "Nombre de rencontres incorrect!!!";
                        }
                    }else{
                        $msg[]= "L'état d'avancement de la création du tournoi ne permet pas de modifier le planing!!! ";
                    }
                }else{
                    $msg[]="Tournoi innexistant";
                }
            }else{
                $msg[]="Formulaire corrompu";
            }
        }
        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
          );
    }
    public static function isPastTournoi($idTournoi){
        $currentDate = new DateTime();
        if($dateEndTournoi = CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]],"tournoisDateFin")["tournoisDateFin"]){
            $dateEndTournoi = new DateTIme($dateEndTournoi);
            if($currentDate>$dateEndTournoi){
                return true;
            }
        }
        return false;
    }
    public static function getTirageStape($idTournoi){
        if(Tournois::isPastTournoi($idTournoi)){
            return ETAPE_REMPLISSAGE_MANNUEL;
        }
        if($phasesTournoi = CommunDb::getAllMatchData(TB_PHASES,[["tournois_idtournois",$idTournoi]])){
            if($matchsDePoules = CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phasesTournoi[0]["idphases"]]])){
                for ($i=0; $i < count($matchsDePoules); $i++) {
                    if ($matchsDePoules[$i]["rencontresEtat"]!=ETAT_MATCH_TERMINE) {
                        return ETAPE_MATCHS_POULE;
                    }
                }
            }
            if($matchFinale = CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phasesTournoi[1]["idphases"]]])){
                for ($i=0; $i < NBR_MATCH_QRT_FINALE; $i++) {
                    if ($matchFinale[$i]["rencontresEtat"]!=ETAT_MATCH_TERMINE) {
                        return ETAPE_MATCHS_QRT;
                    }
                }
                for (; $i < NBR_MATCH_QRT_FINALE+NBR_MATCH_DM_FINALE; $i++) {
                    if ($matchFinale[$i]["rencontresEtat"]!=ETAT_MATCH_TERMINE) {
                        return ETAPE_MATCHS_DMF;
                    }
                }
                if ($matchFinale[$i]["rencontresEtat"]!=ETAT_MATCH_TERMINE) {
                    return ETAPE_MATCH_CLS;
                }
                if ($matchFinale[++$i]["rencontresEtat"]!=ETAT_MATCH_TERMINE) {
                    return ETAPE_MATCH_FINALE;
                }
            }
        }
        return ETAPE_NOT_FOUND;
    }
    public static function addEntraineursEquipeTournoi(){
        $status = false;
        $receved = array();
        $msg=array();
        if(isset($_POST["entraineursTournoi"])){
            $selectedEquipes =array();
            $selectedEntraineurs =array();
            if(isset($_POST["id_tournoi"],$_POST["equipes"],$_POST["entraineur"])){
                $equipes = $_POST["equipes"];
                $entraineurs = $_POST["entraineur"];
                $idtournoi = intval($_POST["id_tournoi"]);
                for ($i=0; $i < min(count($equipes),count($entraineurs)) ; $i++) {
                    if (!in_array($equipes[$i],$selectedEquipes)) {
                        $selectedEquipes[]=intval($equipes[$i]);
                    }else{
                        $msg[]="L'equipe $equipes[$i] est selectionner plus d'une fois !";
                    }
                    if (!in_array($entraineurs[$i],$selectedEntraineurs)) {
                        $selectedEntraineurs[]=intval($entraineurs[$i]);
                    }else{
                        $msg[]="L'entraineur $entraineurs[$i] est selectionner plus d'une fois !";
                    }
                }
                if((count($selectedEquipes)==NBR_MAX_EQUIPES) && (count($selectedEntraineurs)==NBR_MAX_EQUIPES)){
                    $ok=true;
                    for ($i=0; $i < NBR_MAX_EQUIPES; $i++) {
                        if(CommunDb::getMatchData(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournoi],["id_equipe",$selectedEquipes[$i]]])){
                            CommunDb::updateBdMult(TB_TOURNOIS_EQUIPE_ENTRAINEUR,["id_entraineur"],[$entraineurs[$i]],["id_tournoi","id_equipe"],[$idtournoi,$selectedEquipes[$i]]);
                        }else{
                            $ok=false;
                            $msg[]="Une equipe non enregistré est détecté!!!";
                        }
                    }
                    if($ok){
                        if(!CommunDb::getMatchData(TB_PHASES,[["tournois_idtournois",$idtournoi],["phasesName","Phase de groupes"]])){
                            if($idPhase = CommunDb::registreToBdd(TB_PHASES,[["tournois_idtournois",$idtournoi],["phasesName","Phase de groupes"]])){
                                if(CommunDb::registreToBdd(TB_POULES,[["phases_idphases",$idPhase],["poulesName","Poule A"]])
                                   && CommunDb::registreToBdd(TB_POULES,[["phases_idphases",$idPhase],["poulesName","Poule B"]])
                                   && CommunDb::registreToBdd(TB_POULES,[["phases_idphases",$idPhase],["poulesName","Poule C"]])
                                   && CommunDb::registreToBdd(TB_POULES,[["phases_idphases",$idPhase],["poulesName","Poule D"]])
                                ){
                                    $allMatchPhasePoulesRegisted = true;
                                    for ($m=0; $m < NBR_MATCHS_PHASE_POULES ; $m++) {
                                        if(count(CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$idPhase]]))<NBR_MATCHS_PHASE_POULES){
                                            if(!CommunDb::registreToBdd(TB_RENCONTRES,[["phases_idphases",$idPhase]])){
                                                $msg[]="Echec de l'enregistrement d'une rencontres de la phase de poule $idPhase";
                                                $allMatchPhasePoulesRegisted=false;
                                            }
                                        }
                                    }

                                    if($allMatchPhasePoulesRegisted){
                                        if($idPhaseFinale = CommunDb::registreToBdd(TB_PHASES,[["tournois_idtournois",$idtournoi],["phasesName","Phase finale"]])){
                                            $allMatchPhaseFinaleRegisted = true;
                                            for ($m=0; $m < NBR_MATCHS_PHASE_FINALES; $m++) {
                                                if(count(CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$idPhaseFinale]]))<NBR_MATCHS_PHASE_FINALES){
                                                    if(!CommunDb::registreToBdd(TB_RENCONTRES,[["phases_idphases",$idPhaseFinale]])){
                                                        $msg[]="Echec de l'enregistrement d'une rencontres de la phase finale $idPhase";
                                                        $allMatchPhaseFinaleRegisted=false;
                                                    }
                                                }
                                            }
                                            if($allMatchPhaseFinaleRegisted){
                                                CommunDb::updateBd(TB_TOURNOIS,["tournoisEtapeCreation"],[3],"idtournois",$idtournoi);
                                                $status=true;
                                                $msg="Entraineurs sélectionnés avec succes";
                                            }
                                        }else{
                                            $msg[]="Echec de la création de la phase finale";
                                        }

                                    }
                                }else{
                                    $msg[]="Echec de la création des poules";
                                }
                            }else{
                                $msg[]="Echec de la création de la phase de poules !!!";
                            }
                        }else{
                            $status=true;
                            CommunDb::updateBd(TB_TOURNOIS,["tournoisEtapeCreation"],[3],"idtournois",$idtournoi);
                            $msg="Entraineurs sélectionnés avec succes";
                        }
                    }
                }
                $receved = $_POST;
            }
        }
        return array(
              "status"=>$status,
              "outputData"=>$receved,
              "outputMsg"=>$msg
        );
    }
    public static function tiragePoule($phaseId,$matchsDePoules,$tabPoules){
        $status = true;
        $cmpt=0;
        foreach ($tabPoules as $poule) {
            for ($i=0; $i < count($poule)-1; $i++) {
                for ($j=$i+1; $j < count($poule); $j++) {
                    if(!CommunDb::updateBd(TB_RENCONTRES,["rencontresIdEquipe1","rencontresIdEquipe2"],[$poule[$i],$poule[$j]],"idrencontres",$matchsDePoules[$cmpt]["idrencontres"])){
                        $msg[]="Echec de l'enregistrement de la recontre ".$matchsDePoules[$cmpt]["idrencontres"];
                        $status=false;
                    }
                    $cmpt++;
                }
            }
        }
        if($status){
            return CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phaseId]],"rencontresIdEquipe1,rencontresIdEquipe2,idrencontres,rencontresArbitre,stades_idstades,rencontresDate");
        }
        return false;
    }

}

?>
