<?php
require_once("classes/Arbitres.class.php");
require_once("classes/Matchs.class.php");

require_once("classes/Stades.class.php");
if(isset($_SESSION["compte"],$_SESSION["userId"]) && $_SESSION["compte"]=="reportairesEvenementsArbitre"){
    if(isset($_POST["startMatch"])){
        require_once("traitements/startMatch.php");
    }
    require_once("fonctions/reportaireArbitre.inc.php");
     ?>
    <header class="header">
        <?php
            getTopWeb();
            getMenuReportaireArbitre();
        ?>
        <style media="screen">
            .pasMatchArbitreNotify{
                min-width: 60%;
                border:1px solid blue;
                margin-top: 80px;
                box-shadow: 0px 0px 20px 0px green;
                padding:50px;
                color:red;
            }
        </style>
    </header>
    <div style="min-height:500px"  class="container">
        <?php

        if($matchControl = Arbitres::getMatchICanControlNow($_SESSION["userId"])){
            if($idRencontre = $matchControl["idrencontres"]){
                $_SESSION["matchControlId"] = $idRencontre;
                $infosEquipe1 = Equipes::getEquipe($matchControl["rencontresIdEquipe1"]);
                $infosEquipe2 = Equipes::getEquipe($matchControl["rencontresIdEquipe2"]);

                $_SESSION["equipe1Id"] = $infosEquipe1->getValueEncoded("idequipes");
                $_SESSION["equipe2Id"] = $infosEquipe1->getValueEncoded("idequipes");

                $drapeaux1 = $infosEquipe1->getValueEncoded("equipesDrapeau");
                $drapeaux2 = $infosEquipe2->getValueEncoded("equipesDrapeau");

                $_SESSION["equipe1Name"] = $equipesName1 = $infosEquipe1->getValueEncoded("equipesName");
                $_SESSION["equipe2Name"] = $equipesName2 = $infosEquipe2->getValueEncoded("equipesName");

                $stade = Stades::getStade($matchControl["stades_idstades"]);
                if($arbitres = CommunDb::getAllMatchData(TB_ARBITRES_RENCONTRES,[["rencontres_idrencontres",$idRencontre]],"arbitres_idarbitres")){
                    $levelMatch = Matchs::getLevelMatch($idRencontre);
                    switch (Matchs::getStatusMatch($idRencontre)) {
                        case MATCH_NON_JOUER:
                            ?>
                            <form class="" action="" method="post"><br /><br />
                                <div class="col-md-12" style="border:1px solid grey;min-height:400px;background-color:rgba(245, 243, 204, 0.46)">
                                    <table class="table">
                                        <caption style="background-color:bisque;height:30px;padding:0px;margin-bottom:30px;margin-top:10px;border-radius:20px;text-align:center;font-weight:bold;font-size:15px;color:blue;box-shadow:0px 0px 10px 0px blue" ><?php echo $equipesName1." <i style='color:red'>vs</i> ".$equipesName2; ?></caption>
                                        <tr>
                                            <td><center><img style="border:1px solid grey" src="<?php echo PATH_DRAPEAU.$drapeaux1; ?>" alt="" /><br /><?php echo $equipesName1; ?></center></td>
                                            <td>
                                                <?php
                                                    //var_dump($stade);
                                                    $stadesName=$stade->getValueEncoded("stadesName");
                                                    $stadesImg =$stade->getValueEncoded("stadesImgIlust");
                                                 ?>
                                                 <center>
                                                     <img  style="border-radius:60px;height:60px;width:60px" src="<?php echo PATH_STADES.$stadesImg; ?>" alt="">
                                                     <br />
                                                     <span style="color:orange"><?php echo $stadesName; ?></span>
                                                 </center>
                                             </td>
                                            <td><center><img style="border:1px solid grey" src="<?php echo PATH_DRAPEAU.$drapeaux2; ?>" alt="" /><br /><?php echo $equipesName2; ?></center></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center" colspan="3"  >
                                                <img style="width:80px" src="img/logo-CAF.png" alt=""><br />
                                                <h3 style="color:red"><u>ARBITRES</u></h3>
                                                <?php
                                                for ($i=0; $i <count($arbitres) ; $i++) {
                                                    $arbitre = Arbitres::getArbitre($arbitres[$i]["arbitres_idarbitres"]);
                                                    $nomArbitre = $arbitre->getValueEncoded("personnesNom");
                                                    $prenomArbitre = $arbitre->getValueEncoded("personnesPrenom");
                                                    echo $prenomArbitre." ".$nomArbitre;br();

                                                }
                                                ?>
                                            </td>
                                        </tr>
                                    </table><br /><br />
                                    <input style="position:absolute;bottom:0px;left:0px;width:100%;height:50px;font-size:20px" class="btn btn-success" type="submit" name="startMatch" value="DEMARRER LA PARTIE">
                                </div>
                            </form><?php
                        break;
                        case MATCH_EN_COURS:
                            ?>
                            <br />
                            <br />
                            <!--'remplacement',
                            'possession',
                            'tirecadre',
                            'tirepoto',
                            'tirebarre',
                            'passe',
                            'passeDecisif'-->
                            <style media="screen">
                                table tr td button{
                                    height:80px;
                                    background-color: #b7e6d7;
                                }
                                table tr td button:hover{

                                    background-color: orange;
                                    color:white;
                                    font-weight: bold;
                                }
                            </style>
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="#cartonRouge" data-toggle="modal">
                                            <button style="width:100%" type="button" name="button">CORNER </button>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="#cartonRouge" data-toggle="modal">
                                            <button style="width:100%" type="button" name="button">TOUCHE </button>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="#cartonRouge" data-toggle="modal">
                                            <button style="width:100%" type="button" name="button">BUT <i class="fa fa-2x fa-futbol-o"></i></button>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                      <a href="#cartonJaune" data-toggle="modal">
                                        <button style="width:100%" type="button" name="button">CARTON <img style="width:50px;height:50px;border-radius:50px" src="img/cj.jpg" /></button>
                                      </a>
                                    </td>
                                    <td>
                                      <a href="#cartonRouge" data-toggle="modal">
                                        <button style="width:100%" type="button" name="button">FAUTE </button>
                                      </a>
                                    </td>
                                    <td>
                                      <a href="#cartonRouge" data-toggle="modal">
                                        <button style="width:100%" type="button" name="button">CARTON <img style="width:50px;height:50px;border-radius:50px" src="img/cr.jpg" /></button>
                                      </a>
                                    </td>
                                </tr>

                                <tr>
                                    <?php
                                    switch ($levelMatch) {
                                        case ETAT_DEBUT1_MATCH:
                                            ?>
                                            <td>
                                                <a href="#finPMisTemps" data-toggle="modal">
                                                    <button style="width:100%" type="button" name="button">FIN PREMIER MIS TEMPS</button>
                                                </a>
                                            </td>
                                            <?php
                                            break;
                                        case ETAT_DEBUT2_MATCH:
                                            ?>
                                            <td>
                                                <a href="#finSMisTemps" data-toggle="modal">
                                                    <button style="width:100%" type="button" name="button">FIN DEUXIEME MIS TEMPS</button>
                                                </a>
                                            </td>
                                            <?php
                                        break;
                                        case ETAT_DEB1_PROL_MATCH:
                                            ?>

                                            <td>
                                                <a href="#finProlP1" data-toggle="modal">
                                                    <button style="width:100%" type="button" name="button">FIN PROLOGATION (P1)</button>
                                                </a>
                                            </td>
                                            <?php
                                        break;
                                        case ETAT_DEB2_PROL_MATCH:
                                            ?>
                                            <td>
                                                <a href="#finProlP2" data-toggle="modal">
                                                    <button style="width:100%" type="button" name="button">FIN PROLOGATION (P2)</button>
                                                </a>
                                            </td>
                                            <?php
                                        break;
                                        case ETAT_DEB_TB_MATCH:
                                            ?>
                                            <td>
                                                <a href="#tireaubut" data-toggle="modal">
                                                    <button style="width:100%" type="button" name="button">TIRE AU BUT</button>
                                                </a>
                                            </td>
                                            <?php
                                        break;
                                        default:
                                            # code...
                                            break;
                                    }

                                    ?>
                                    <td>
                                        <a href="#tireaubut" data-toggle="modal">
                                            <button style="width:100%" type="button" name="button">HORS JEUX</button>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="#tireaubut" data-toggle="modal">
                                            <button style="width:100%" type="button" name="button">FIN DU MATCH</button>
                                        </a>
                                    </td>


                                </tr>
                            </table>
                            <?php
                            break;
                        case MATCH_EN_PAUSE:
                               ?>
                               <table class="table">
                                   <tr>
                                       <?php
                                       switch ($levelMatch) {
                                           case ETAT_FIN1_MATCH:
                                                ?>
                                                <td>
                                                    <a href="#debutSMisTemps" data-toggle="modal">
                                                        <button style="width:100%" type="button" name="button">DEBUT DEUXIEME MIS TEMPS</button>
                                                    </a>
                                                </td>
                                                <?php
                                               break;
                                               case ETAT_FIN2_MATCH:
                                                ?>
                                                <td>
                                                    <a href="#debutProlP1" data-toggle="modal">
                                                        <button style="width:100%" type="button" name="button">DEBUT PROLOGATION (P1)</button>
                                                    </a>
                                                </td>
                                                <?php
                                               break;
                                               case ETAT_FIN1_PROL_MATCH:
                                                ?>
                                                <td>
                                                    <a href="#debutProlP2" data-toggle="modal">
                                                        <button style="width:100%" type="button" name="button">DEBUT PROLOGATION (P2)</button>
                                                    </a>
                                                </td>
                                                <?php
                                               break;

                                       }
                                        ?>
                                   </tr>
                                   <tr>

                                       <td>
                                           <a href="#finMatch" data-toggle="modal">
                                               <button style="width:100%" type="button" name="button">FIN DU MATCH</button>
                                           </a>
                                       </td>
                                   </tr>
                               </table>
                               <?php
                            break;
                        default:
                            echo "<center>
                            NOT FOUND
                            </center>";
                        break;
                    }
                }


            }else{
                ?>
                <div class="pasMatchArbitreNotify">
                    <center>
                        AUCUN MATCH A ARBITRER EN CE MOMENT
                    </center>
                </div>
                <?php
            }
        }else{
            ?>
            <div class="pasMatchArbitreNotify">
                <center>
                    AUCUN MATCH A ARBITRER EN CE MOMENT
                </center>
            </div>
            <?php
        }
        ?>
    </div>
    <?php
}else{
    header("Location../");
}
?>
