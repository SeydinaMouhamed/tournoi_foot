<?php
function getPoulesTournoi($organisateurId,$selectedEquipes){
    $equipes[]=$organisateurId;
    shuffle($selectedEquipes);
    for ($i=0; $i < count($selectedEquipes) ; $i++) {
        if(!in_array($selectedEquipes[$i],$equipes)){
            $equipes[]=$selectedEquipes[$i];
        }
    }
    $pouleA=array();$pouleB=array();$pouleC=array();$pouleD=array();
    for ($i=0; $i < 4; $i++) {$pouleA[]=$equipes[$i];}
    for (; $i < 8; $i++) {$pouleB[]=$equipes[$i];}
    for (; $i < 12; $i++) {$pouleC[]=$equipes[$i];}
    for (; $i < 16; $i++) {$pouleD[]=$equipes[$i];}
    return array(
        "pouleA"=>$pouleA,
        "pouleB"=>$pouleB,
        "pouleC"=>$pouleC,
        "pouleD"=>$pouleD
    );
}
function getTirageMatchsPoules($idTournoi,$organisateurId=1,$selectedEquipes=array(1,2)){
    if($phases = CommunDb::getAllMatchData(TB_PHASES,[["tournois_idtournois",$idTournoi]],"idphases")){
        if($matchsDePoules=CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phases[0]["idphases"]]],"rencontresIdEquipe1,rencontresIdEquipe2,idrencontres,rencontresArbitre,stades_idstades,rencontresDate")){
            for ($i=0; $i < count($matchsDePoules) ; $i++) {
                if(!$matchsDePoules[$i]["rencontresIdEquipe1"] || !$matchsDePoules[$i]["rencontresIdEquipe2"]){
                    if($matchsDePoules = Tournois::tiragePoule($phases[0]["idphases"],$matchsDePoules,getPoulesTournoi($organisateurId,$selectedEquipes))){
                        return $matchsDePoules;
                    }
                }
            }
        }
        return $matchsDePoules;
    }
}
function getTabPoule($tirage,$begin,$groupe){
    $tab=array(); ?>
    <table class="table">
        <caption style="background-color:rgb(88, 205, 166);color:white;font-weight:bold;border-radius:0px 30px 0px 0px;width:100px;text-align:center;height:30px;padding:0px;margin-bottom:20px">GROUPE <?php echo $groupe; ?></caption>
        <?php
        //rgb(70, 187, 220)//#f1aa40//#90c957
        for ($i=$begin; $i < $begin+6; $i++) {
            $infosEquipe1 = Equipes::getEquipe($tirage[$i]["rencontresIdEquipe1"]);
            $infosEquipe2 = Equipes::getEquipe($tirage[$i]["rencontresIdEquipe2"]);
            $infosArbitre = Arbitres::getArbitre($tirage[$i]["rencontresArbitre"]);
            $infosStade = Stades::getStade($tirage[$i]["stades_idstades"]);

            $prenomArbitre = $infosArbitre->getValueEncoded("personnesPrenom");
            $nomArbitre = $infosArbitre->getValueEncoded("personnesNom");
            $nationaliteArbitre = $infosArbitre->getValueEncoded("personnesNationalite");

            $stadeId = $infosStade->getValueEncoded("idstades");
            $stadeNom = $infosStade->getValueEncoded("stadesName");
            $stadeImg = $infosStade->getValueEncoded("stadesImgIlust");

            $idEq1  = $infosEquipe1->getValueEncoded("idequipes");
            $nomEq1  = $infosEquipe1->getValueEncoded("equipesName");
            $drapeauEq1 = $infosEquipe1->getValueEncoded("equipesDrapeau");

            $idEq2  = $infosEquipe2->getValueEncoded("idequipes");
            $nomEq2  = $infosEquipe2->getValueEncoded("equipesName");
            $drapeauEq2 = $infosEquipe2->getValueEncoded("equipesDrapeau");

            $dateMatch = $tirage[$i]["rencontresDate"];
            $idRencontre = $tirage[$i]["idrencontres"];
            $status = Matchs::getStatusMatch($idRencontre);
            ?>
            <tr>
                <td style="width:25%">
                    Date rencontre<br />
                    <?php echo $dateMatch; ?>
                </td>
                <td style="width:25%;text-align:right;font-weight:bold;font-size:14px;color:grey">
                    <a href="index.php?page=equipeJoueurs&v=web&equipeId=<?php echo $idEq1 ?>">
                        <?php echo $nomEq1; ?>
                        <img src="<?php echo PATH_DRAPEAU.$drapeauEq1; ?>" width="25px" title="Drapeau <?php echo $nomEq1;  ?>" alt="Drapeau <?php echo $nomEq1;  ?>">
                        <?php

                        ?>
                    </a>
                </td>
                <td>
                    <?php
                    switch ($status) {
                        case MATCH_EN_COURS:
                            $scores = Matchs::getScores($idRencontre);
                            $scoreEquipe1 = $scores["equipe1"]["score"];
                            $scoreEquipe2 = $scores["equipe2"]["score"];
                            echo "<span style='color:orange'><b>$scoreEquipe1 - $scoreEquipe2</b><br />En cours</span>";
                        break;
                        case MATCH_NON_JOUER:
                            echo "<span style='color:red'>Non encore joué</span>";
                        break;
                        case MATCH_EN_PAUSE:
                            $scores = Matchs::getScores($idRencontre);
                            $scoreEquipe1 = $scores["equipe1"]["score"];
                            $scoreEquipe2 = $scores["equipe2"]["score"];
                            echo "<span style='color:grey'><b>$scoreEquipe1 - $scoreEquipe2</b><br />PAUSE</span>";
                        break;
                        case MATCH_TERMINE:
                            $scores = Matchs::getScores($idRencontre);
                            $scoreEquipe1 = $scores["equipe1"]["score"];
                            $scoreEquipe2 = $scores["equipe2"]["score"];
                            echo "<span style='color:green'><b>$scoreEquipe1 - $scoreEquipe2</b><br />TERMINE</span>";
                        break;
                        default:
                            echo "<span color:red>NOT FOUND</span>";
                        break;
                    }
                    ?>
                </td>
                <td style="width:25%;text-align:left;font-weight:bold;font-size:14px;color:grey">
                    <a href="index.php?page=equipeJoueurs&v=web&equipeId=<?php echo $idEq2 ?>">
                        <img src="<?php echo PATH_DRAPEAU.$drapeauEq2; ?>" width="25px" title="Drapeau <?php echo $nomEq2;  ?>" alt="Drapeau <?php echo $nomEq2;  ?>">
                        <?php echo $nomEq2; ?>
                    </a>
                </td>
                <td style="width:25%">
                    <a href="index.php?page=viewStade&idStade=<?php echo $stadeId; ?>" style="color:blue"><img src="<?php echo PATH_STADES.$stadeImg; ?>" width="25px"  title="Stade <?php  echo $stadeNom; ?>" alt="Stade <?php  echo $stadeNom; ?>">
                    <?php echo $stadeNom; ?></a><br />
                    <?php echo $prenomArbitre." ".$nomArbitre."<i>(".$nationaliteArbitre.")</i>"; ?><br />

                </td>
            </tr>
            <?php

        } ?>
    </table>
    <?php
}
function getTableTirageMatchsPoules($tirage){
    getTabPoule($tirage,0,"A");
    getTabPoule($tirage,6,"B");
    getTabPoule($tirage,12,"C");
    getTabPoule($tirage,18,"D");
}
?>
