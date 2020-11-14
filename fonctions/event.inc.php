<?php
require_once("classes/Equipes.class.php");
require_once("classes/Matchs.class.php");
function getFormAddCartonJaune(){
    if(isset($_SESSION["equipe1Name"],$_SESSION["equipe2Name"])){
        $equipe1Name=$_SESSION["equipe1Name"];
        $equipe2Name=$_SESSION["equipe2Name"];
        $joueursEquipe1 = Matchs::getListeJoueursEquipe1Rencontre($_SESSION["matchControlId"],$_SESSION["equipe1Id"]);
        $joueursEquipe2 = Matchs::getListeJoueursEquipe2Rencontre($_SESSION["matchControlId"],$_SESSION["equipe2Id"]);

    ?>
    <div class="modal fade" id="cartonJaune" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="panel-title" style="color:blue;text-align:center"  id="">Selectionner le joueur qui a reçu le carton</h4>

          </div>
          <div class="modal-body">
              <div class="col-lg-12">
    				<div class="panel">
    				     <div  style="background-color:yellow"  class="panel-heading">
    						<div class="panel-control">
    							<ul class="nav nav-tabs">
    								<li class="active">
                                        <a data-toggle="tab" href="#demo-tabs-box-1" aria-expanded="true">
                                            <?php
                                            echo $equipe1Name;
                                            ?>
                                        </a>
    								</li>
    								<li class="">
                                        <a data-toggle="tab" href="#demo-tabs-box-2" aria-expanded="false">
                                            <?php
                                            echo $equipe2Name;
                                            ?>
                                        </a>
    								</li>
    							</ul>
    						</div>
                        <h4 class="panel-title" id="">CARTON JAUNE <img style="width:30px;height:30px;border-radius:30px" src="<?php echo "img/cj.jpg"; ?>" alt=""></h4>
    					</div>

    					<div class="panel-body">

    						<div class="tab-content">
    							<div id="demo-tabs-box-1" class="tab-pane fade active in">
    								<h4 class="text-thin">Liste des joueurs</h4>
    								<p>
                                        <?php
                                        if ($joueursEquipe1) {
                                            for ($i=0; $i < count($joueursEquipe1) ; $i++) {
                                                ?>
                                                <a href="traitements/execEvent.php?idJoueurs=<?php echo $joueursEquipe1[$i]["idjoueurs"]; ?>">
                                                    <button style="width:100%" class="btn btn-warning" type="button" name="button"><?php echo $joueursEquipe1[$i]["personnesPrenom"]." ".$joueursEquipe1[$i]["personnesNom"]; ?></button>
                                                </a><br />
                                                <?php
                                            }
                                        }
                                        ?>
                                    </p>
    							</div>
    							<div id="demo-tabs-box-2" class="tab-pane fade">
    								<h4 class="text-thin">Liste des joueurs</h4>
    								<p>
                                        <?php
                                        if ($joueursEquipe2) {
                                            for ($i=0; $i < count($joueursEquipe2) ; $i++) {
                                                ?>
                                                <a href="traitements/execEvent.php?idJoueurs=<?php echo $joueursEquipe2[$i]["idjoueurs"]; ?>">
                                                    <button style="width:100%" class="btn btn-warning" type="button" name="button"><?php echo $joueursEquipe2[$i]["personnesPrenom"]." ".$joueursEquipe2[$i]["personnesNom"]; ?></button>
                                                </a><br />
                                                <?php
                                            }
                                        }
                                        ?>
                                    </p>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
          </div>
          <div class="modal-footer">
                <button type="button" style="background-color:yellow" class="btn" data-dismiss="modal">FERMER</button>
          </div>
        </div>
      </div>
    </div>
    <?php
}
}
function getFormAddCartonRouge(){
    if(isset($_SESSION["equipe1Name"],$_SESSION["equipe2Name"])){
        $equipe1Name=$_SESSION["equipe1Name"];
        $equipe2Name=$_SESSION["equipe2Name"];
        $joueursEquipe1 = Matchs::getListeJoueursEquipe1Rencontre($_SESSION["matchControlId"],$_SESSION["equipe1Id"]);
        $joueursEquipe2 = Matchs::getListeJoueursEquipe2Rencontre($_SESSION["matchControlId"],$_SESSION["equipe2Id"]);

    ?>
    <div class="modal fade" id="cartonRouge" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="panel-title" style="color:blue;text-align:center"  id="">Selectionner le joueur qui a reçu le carton</h4>

          </div>
          <div class="modal-body">
              <div class="col-lg-12">
    				<div class="panel">
    				     <div  style="background-color:red"  class="panel-heading">
    						<div class="panel-control">
    							<ul class="nav nav-tabs">
    								<li class="active">
                                        <a data-toggle="tab" href="#demo-tabs-box-3" aria-expanded="true">
                                            <?php
                                            echo $equipe1Name;
                                            ?>
                                        </a>
    								</li>
    								<li class="">
                                        <a data-toggle="tab" href="#demo-tabs-box-4" aria-expanded="false">
                                            <?php
                                            echo $equipe2Name;
                                            ?>
                                        </a>
    								</li>
    							</ul>
    						</div>
                        <h4 class="panel-title" id="">CARTON JAUNE <img style="width:30px;height:30px;border-radius:30px" src="<?php echo "img/cr.jpg"; ?>" alt=""></h4>
    					</div>

    					<div class="panel-body">

    						<div class="tab-content">
    							<div id="demo-tabs-box-3" class="tab-pane fade active in">
    								<h4 class="text-thin">Liste des joueurs</h4>
    								<p>
                                        <?php
                                        if ($joueursEquipe1) {
                                            for ($i=0; $i < count($joueursEquipe1) ; $i++) {
                                                ?>
                                                <a href="traitements/execEvent.php?idJoueurs=<?php echo $joueursEquipe1[$i]["idjoueurs"]; ?>">
                                                    <button style="width:100%" class="btn btn-warning" type="button" name="button"><?php echo $joueursEquipe1[$i]["personnesPrenom"]." ".$joueursEquipe1[$i]["personnesNom"]; ?></button>
                                                </a><br />
                                                <?php
                                            }
                                        }
                                        ?>
                                    </p>
    							</div>
    							<div id="demo-tabs-box-4" class="tab-pane fade">
    								<h4 class="text-thin">Liste des joueurs</h4>
    								<p>
                                        <?php
                                        if ($joueursEquipe2) {
                                            for ($i=0; $i < count($joueursEquipe2) ; $i++) {
                                                ?>
                                                <a href="traitements/execEvent.php?idJoueurs=<?php echo $joueursEquipe2[$i]["idjoueurs"]; ?>">
                                                    <button style="width:100%" class="btn btn-warning" type="button" name="button"><?php echo $joueursEquipe2[$i]["personnesPrenom"]." ".$joueursEquipe2[$i]["personnesNom"]; ?></button>
                                                </a><br />
                                                <?php
                                            }
                                        }
                                        ?>
                                    </p>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
          </div>
          <div class="modal-footer">
                <button type="button" style="background-color:yellow" class="btn" data-dismiss="modal">FERMER</button>
          </div>
        </div>
      </div>
    </div>
    <?php
}

}
?>
