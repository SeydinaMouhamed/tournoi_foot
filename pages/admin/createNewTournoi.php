<?php
    if(isset($_SESSION["compte"])){
        require_once("fonctions/admin.inc.php");
        require_once("classes/Equipes.class.php");
        require_once("classes/Tournois.class.php");
        require_once("classes/Entraineurs.class.php");
        require_once("classes/Arbitres.class.php");
        require_once("classes/Stades.class.php");
        require_once("classes/Matchs.class.php");
        require_once("forms/tournoi.php");
        require_once("forms/paysOrganisateur.php");
        require_once("forms/equipes.php");
        require_once("forms/entraineurs.php");
        require_once("forms/planing.php");
        require_once("forms/tiragePoule.php");
         ?>
        <header class="header">
            <?php
            if(isset($_POST["addTournoi"])){
                $result = Tournois::addTournoi();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                    $ret = $result["outputData"];

                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }else if(isset($_POST["updateTournoi"])){
                $result = Tournois::updateTournoi();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }else if(isset($_POST["equipesTournoi"])){
                $result = Tournois::addEquipesParticipant();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }else if(isset($_POST["entraineursTournoi"])){
                $result = Tournois::addEntraineursEquipeTournoi();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }else if(isset($_POST["createPlaning"])){
                $result = Tournois::createPlaning();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }else if (isset($_POST["selectPaysOrganisateur"])) {
                $result = Tournois::updatePaysOrganisateur();
                if(!$result["status"]){
                    alertErrors($result["outputMsg"]);
                }else{
                    alertErrors(array(),$result["outputMsg"]);
                }
            }
            getTopWeb();
            getMenuAdmin();
            $etapeCreation = 0;
            $selectedEquipes=array();
            $equipes=array();
            $thisTournoi=array();
            if(isset($_GET["idTournoi"])){
                $idTournoiToCreate = intval($_GET["idTournoi"]);
                if($thisTournoi = Tournois::getTournoi($idTournoiToCreate)){
                    $etapeCreation = $thisTournoi->getValueEncoded("tournoisEtapeCreation");
                    if($equipes = Equipes::getEquipes()){
                        $selectedEquipes = Tournois::getSelEqOnTourID_ArrayFormat($idTournoiToCreate);

                    }
                }
            }
            $classActive=["","","","","","","","","",""];
            $classActive[$etapeCreation]=" active";
            ?>
        </header>
        <div style="min-height:600px;" class="container">
            <script>
            function changeNbrEquipes(val){
                var nbrSelected = parseInt(document.getElementById("indicateurNbrEquipes").innerHTML);
                if(val==true){
                    nbrSelected +=1;
                }else{
                    nbrSelected -=1;
                }
                document.getElementById("indicateurNbrEquipes").innerHTML=nbrSelected;
                if(nbrSelected==16){
                    document.getElementById("indicateurNbrEquipes").style.background="rgb(0,255,0)";
                }else{
                    document.getElementById("indicateurNbrEquipes").style.background="rgb(200,0,0)";
                }
            }
            </script>
            <center>
                <h2 style="color:grey">CREATION D'UN TOURNOI</h2>
            </center>
                        <div class="col-lg-12">
        							<div class="panel">
        							    <div id="demo-bv-wz">
        									<div class="wz-heading">
                                                <div class="progress progress-sm progress-light-base">
        											<div class="progress-bar progress-bar-primary" ></div>
        										</div>
        										<ul class="wz-icon-bw wz-nav-off wz-steps">
        											<li class="col-xs-2  <?php echo $classActive[0]; ?>">
        												<a data-toggle="tab" href="#demo-bv-tab1" title="Informations sur le tournoi" aria-expanded="true">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-mint">
        													<i class="wz-icon fa fa-info fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-2  <?php echo $classActive[1]; ?>" >
        												<a data-toggle="tab" href="#demo-bv-tab2" title="Selection des equipes"  aria-expanded="true">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-info">
        													<i class="wz-icon fa fa-users fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-2 <?php echo $classActive[2]; ?>">
        												<a data-toggle="tab" href="#demo-bv-tab3" title="Selection des entraineurs">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-warning">
        													<i class="wz-icon fa fa-futbol-o fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-2 <?php echo $classActive[3]; ?>">
        												<a data-toggle="tab" href="#demo-bv-tab4" title="Planing des rencontres">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-success">
        													<i class="wz-icon fa fa-heart fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-2 <?php echo $classActive[4]; ?>">
        												<a data-toggle="tab" href="#demo-bv-tab5" title="Finish">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-success">
        													<i class="wz-icon fa fa-heart fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        										</ul>
        									</div>

        									<!--Form-->
        									<div id="demo-bv-wz-for" class="form-horizontal bv-form" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
        										<div class="panel-body">
        											<div class="tab-content">
                                                    <form id="demo-bv-tab1" enctype="multipart/form-data" action="" method="POST" class="tab-pane <?php echo $classActive[0]; ?>">
                                                        <center>
                                                            <u><b style="color:blue;font-size:17px">ENREGISTREMENT DES INFORMATIONS DU TOURNOI</b></u><br /><br />
                                                        </center>
                                                                <?php
                                                                if($etapeCreation){
                                                                    $thisTournoiName = $thisTournoi->getValueEncoded("tournoisName");
                                                                    $thisTournoiDD = $thisTournoi->getValueEncoded("tournoisDateDebut");
                                                                    $thisTournoiImgPub = $thisTournoi->getValueEncoded("tournoisImgPub");
                                                                    $thisTournoiAbout = $thisTournoi->getValueEncoded("tournoisApropos");
                                                                    $thisTournoiId = $thisTournoi->getValueEncoded("idtournois");
                                                                    getFormTournoi($thisTournoiId,$thisTournoiName,$thisTournoiDD,$thisTournoiImgPub,$thisTournoiAbout);
                                                                    ?>
                                                                    <center>
                                                                        <input class="next btn btn-success" type="submit" name="updateTournoi" value="MODIFIER">
                                                                    </center>
                                                                    <?php
                                                                }else{
                                                                    if(isset($ret["tournoisName"],$ret["tournoisDateDebut"],$ret["tournoisApropos"])){
                                                                        $name = $ret["tournoisName"];
                                                                        $dd = $ret["tournoisDateDebut"];
                                                                        $apropos = $ret["tournoisApropos"];
                                                                        getFormTournoi("",$name,$dd,"",$apropos);
                                                                    }else{

                                                                        getFormTournoi();
                                                                    }
                                                                    ?>
                                                                    <center>
                                                                        <input class="next btn btn-success" type="submit" name="addTournoi" value="ENREGISTRER">
                                                                    </center>
                                                                    <?php
                                                                }

                                                                ?>

        												</form>
        												<div style="min-height:300px;" id="demo-bv-tab2" class="tab-pane <?php echo $classActive[1]; ?> in ">

                                                            <form class="" action="" method="post">
                                                                <center>
                                                                    <u><b style="color:blue;font-size:17px">SELECTION DES EQUIPES QUALIFIEES AU TOURNOI</b></u>
                                                                </center>
                                                                <?php
                                                                if($thisTournoi){
                                                                    ?>

                                                                    <?php
                                                                    if(count($selectedEquipes)==NBR_MAX_EQUIPES){
                                                                        $bg = "0,255,0";
                                                                    }else{
                                                                        $bg = "200,0,0";
                                                                    }
                                                                    ?>
                                                                    <div id="indicateurNbrEquipes" style="color:white;font-weight:bold;font-size:20px;padding-top:5px;text-align:center;float:left;bottom:30px;left:30px;box-shadow:0px 0px 30px 5px rgb(0,255,0);position:fixed;width:40px;height:40px;background-color:rgb(<?php echo $bg; ?>);border-radius:50px;"><?php
                                                                        echo count($selectedEquipes); ?>
                                                                    </div><?php getFormSelectionEquipes($thisTournoi,$equipes,$selectedEquipes);
                                                                }else{
                                                                    echo "<center><br /><br />
                                                                    <H2 style='color:red'>VOUS DEVEZ D'ABORD ENREGISTRER l'ETAPE PRECEDENTE !!!</H2>
                                                                    </center>";
                                                                }
                                                                ?>
                                                                <center>
                                                                    <input class="btn btn-success" type="submit" name="equipesTournoi" value="ENREGISTRER">
                                                                </center>
                                                            </form>

        												</div>

        												<div id="demo-bv-tab3" class="tab-pane  <?php echo $classActive[2]; ?>">
                                                            <?php
                                                            if($etapeCreation>1){
                                                                ?>
                                                                <form class="" action="" method="post">
                                                                    <?php
                                                                    getFormEnregistrementEntraineurs($thisTournoi,$selectedEquipes);
                                                                    ?>
                                                                    <center>
                                                                        <input class="btn btn-success" type="submit" name="entraineursTournoi" value="ENREGISTRER">
                                                                    </center>
                                                                </form>
                                                                <?php
                                                            }else{
                                                                echo "<center><br /><br />
                                                                <H2 style='color:red'>VOUS DEVEZ D'ABORD ENREGISTRER l'ETAPE PRECEDENTE !!!</H2>
                                                                </center>";
                                                            }
                                                            ?>

        												</div>

        												<!--Fourth tab-->
        												<div id="demo-bv-tab4" class="tab-pane   <?php echo $classActive[3]; ?> mar-btm text-center">
                                                            <h4 style="color:red">PLANING DES RENCONTRES</h4>
                                                            <?php
                                                                if($etapeCreation>2){
                                                                    ?>
                                                                    <form class="" action="" method="post">
                                                                        <?php
                                                                        getFormPlaning($thisTournoiId);
                                                                        ?>
                                                                        <center>
                                                                            <input class="btn btn-success" type="submit" name="createPlaning" value="ENREGISTRER">
                                                                        </center>
                                                                    </form>
                                                                    <?php
                                                                }else{
                                                                    echo "
                                                                    <center><br /><br />
                                                                    <H2 style='color:red'>VOUS DEVEZ D'ABORD ENREGISTRER l'ETAPE PRECEDENTE !!!</H2>
                                                                    </center>";
                                                                }
                                                             ?>
        												</div>
                                                        <div id="demo-bv-tab5" class="tab-pane   <?php echo $classActive[4]; ?> mar-btm text-center">
                                                            
                                                            <h4 style="color:blue">TIRAGES</h4><br /><?php
                                                            if($etapeCreation>3){
                                                                $stape = Tournois::getTirageStape($thisTournoiId);
                                                                switch ($stape) {

                                                                    case ETAPE_REMPLISSAGE_MANNUEL:
                                                                            echo "Remplissage manuelle";
                                                                        break;
                                                                    case ETAPE_MATCHS_POULE:
                                                                        echo "<div style='color:green;margin-top:-30px;box-shadow: 5px 5px 8px rgb(70, 187, 220), 10px 10px 8px #f1aa40, 15px 15px 8px;border:1px solid grey;width:100%;border-radius:30px 30px 0px 0px'><i style='float:left;margin-left:20px;margin-top:5px;' class='fa fa-futbol-o fa-2x'></i>PHASE DE POULES<i style='float:right;margin-right:20px;margin-top:5px;' class='fa fa-futbol-o fa-2x'></i></div><br />";
                                                                            if(!$organisateurId=CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$thisTournoiId]],"tournoisOrganisateur")["tournoisOrganisateur"]){
                                                                                getFormSelectPaysOraganisateur($thisTournoiId,$selectedEquipes);
                                                                            }else{
                                                                                ?>
                                                                                <h1></h1>
                                                                                <?php
                                                                                if($tirage = getTirageMatchsPoules($thisTournoiId,$organisateurId,$selectedEquipes)){
                                                                                    getTableTirageMatchsPoules($tirage);
                                                                                }

                                                                            }
                                                                        break;
                                                                    case ETAPE_MATCHS_QRT:
                                                                            echo "Quart de finale";
                                                                        break;
                                                                    case ETAPE_MATCHS_DMF:
                                                                            echo "Demi finale";
                                                                        break;
                                                                    case ETAPE_MATCH_CLS:
                                                                            echo "finale";
                                                                        break;
                                                                    case ETAPE_MATCH_FINALE:
                                                                            echo "Poule";
                                                                        break;

                                                                    default:

                                                                        break;
                                                                }
                                                            }else{
                                                                echo "<center><br /><br />
                                                                <H2 style='color:red'>VOUS DEVEZ D'ABORD ENREGISTRER l'ETAPE PRECEDENTE !!!</H2>
                                                                </center>";
                                                            } ?>
        												</div>
        											</div>
        										</div>
        										<div class="panel-footer text-right">
        											<div class="box-inline">
        												<button type="button" class="previous btn btn-primary disabled">Precedent</button>
        												<button type="button" class="next btn btn-primary">Suivant</button>
        											</div>
        										</div>
        									</div>
        								</div>
                                    </div>
        						</div>

        </div>
        <?php
    }else{
        die("IMPOSSIBLE D'AFFICHER LE CONTENU DE CETTE PAGE");
    }
?>
