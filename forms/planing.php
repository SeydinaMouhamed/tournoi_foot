<script type="text/javascript">
    function addSelectArbitre(element){
        var divParent = element.parentNode.parentNode;
        var spnParent = element.parentNode;
        var firstSel = spnParent.nextSibling.nextSibling;
        var cpFirstSel = firstSel.innerHTML;
        var newSelectCreated = document.createElement("select");
        newSelectCreated.className="form-control listArbitres";
        newSelectCreated.style="width:100px";
        newSelectCreated.name=firstSel.name;
        newSelectCreated.innerHTML = cpFirstSel;

        divParent.appendChild(newSelectCreated);
    }
</script>
<style media="screen">
    table tr:hover{
            background-color: rgba(195,195,195,0.2);
    }
    table tr td select{
        cursor:pointer;
    }
</style>

<?php
function getFormOptionArbitres($arbitreId=""){
    $opt = "";
    if($arbitres = Arbitres::getArbitres()){
        for ($i=0; $i < count($arbitres); $i++) {
            $nomArbitre = $arbitres[$i]->getValueEncoded("personnesNom");
            $idArbitre = $arbitres[$i]->getValueEncoded("idarbitres");
            $checked="";
            if($arbitreId){
                if($arbitreId==$idArbitre){
                    $checked = "selected";
                }
            }else{
                if ($i==0) {
                    $checked = "selected";
                }
            }
            $opt.="<option $checked value='{$idArbitre}'>
            $nomArbitre
            </option>";
        }
    }
    return $opt;
}
function getFormOptionStades($idStade=""){
    $opt = "";
    if($stades = Stades::getStades()){
        for ($i=0; $i < count($stades); $i++) {
            $stadesName = $stades[$i]->getValueEncoded("stadesName");
            $idstades = $stades[$i]->getValueEncoded("idstades");
            $checked="";
            if($idStade){
                if($idStade==$idstades){
                    $checked = "selected";
                }
            }else{
                if ($i==0) {
                    $checked = "selected";
                }
            }
            $opt.="<option $checked value='{$idstades}'>
            $stadesName
            </option>";
        }
    }
    return $opt;
}
function getDateAndTimeInput($date="",$begin=false){
    static $d=D_TODAY;
    static $m=M_TODAY;
    static $y=Y_TODAY;
    if($date){
        $defaultDate = substr($date,0,10);
        $defaultTime = substr($date,11,5);
    }else{
        $prM="";
        $prD="";
        if($m<10)$prM="0";
        if($d<10)$prD="0";
        $defaultDate = $y."-".$prM.$m."-".$prD.$d;
        $defaultTime = "12:00";
    }
    ?>
    <input style="height:30px;width:110px" <?php if($begin){echo 'title="Date de début du tournoi non modifiable à ce niveau" readonly="true"';} ?> type="date" value="<?php echo $defaultDate; ?>"  name="date[]" required> à
    <div   style="width:100px;float:right" class="input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
        <input style="height:30px" type="text" name="heure[]" value="<?php echo $defaultTime; ?>" required class="form-control" placeholder="H:m">
        <span class="input-group-addon">
            <span class="glyphicon glyphicon-time"></span>
        </span>

    </div>
    <?php
    $d++;
    if($d>=28){
        $d=1;$m++;
    }if($m>=12){
        $m=1;$y++;
    }
}
function getArbitreInput($name="arbitre",$idrencontres="",$arbitreCentraleId=""){
    if($arbitreCentraleId){
        if($arbitresId = CommunDb::getAllMatchData(TB_ARBITRES_RENCONTRES,[["rencontres_idrencontres",$idrencontres]],"arbitres_idarbitres")){
            ?>
            <div class="input-group">
                <span class="input-group-addon"><a style="cursor:pointer" title="Ajouter un arbitre pour cette rencontre" onclick="addSelectArbitre(this);"> <i  class="fa fa-plus-circle"></i></a></span>
                <?php
                for ($i=0; $i <count($arbitresId) ; $i++) {
                    $arbitreId = $arbitresId[$i]["arbitres_idarbitres"];
                    ?>
                        <select style="width:100px;" class="form-control listeArbitres" name="<?php echo $name; ?>[]" <?php if($i==0){ echo "required"; } ?>>
                            <option value="">-----arbitre-----</option><?php echo getFormOptionArbitres($arbitreId); ?>
                        </select>
                    <?php
                }
                ?>
            </div>
            <?php
        }
    }else{
        ?>
        <div class="input-group">
          <span class="input-group-addon"><a style="cursor:pointer" title="Ajouter un arbitre pour cette rencontre" onclick="addSelectArbitre(this);"> <i  class="fa fa-plus-circle"></i></a></span>
          <select style="width:100px;" class="form-control listeArbitres" name="<?php echo $name; ?>[]" required>
              <option value="">-----arbitre-----</option><?php echo getFormOptionArbitres(); ?>
          </select>
        </div>

        <?php
    }
}
function getInputStade($oldStadeId=""){
    ?>
    <select  class="form-control" name="stade[]">
        <option value="">----statde----</option>
        <?php echo getFormOptionStades($oldStadeId); ?>
    </select>
    <?php
}
function getFormPlaning($idTournoi){
    if($phases = CommunDb::getAllMatchData(TB_PHASES,[["tournois_idtournois",$idTournoi]])){
        $cmptT=0;
        $dateDebut = CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$idTournoi]],"tournoisDateDebut")["tournoisDateDebut"];
        ?>
        <input type="hidden" name="idTournoi" value="<?php echo $idTournoi; ?>">
        <?php
        for ($i=0; $i < count($phases); $i++) {
            echo "<center>
            <h3 style='color:blue'><i><u>{$phases[$i]["phasesName"]}</u></i></h3>
            </center>";
            switch ($phases[$i]["phasesName"]) {
                case 'Phase de groupes':
                    if($rencontresId = CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phases[$i]["idphases"]]])){
                        $cmpt=0;
                        ?>
                            <table class="table">
                                <tr>
                                    <th style="text-align:center;width:100px">Poule</th>
                                    <th style="text-align:center;width:150px">Match</th>
                                    <th style="text-align:center;width:250px">Date et heure</th>
                                    <th style="text-align:center;width:180px">Arbitres</th>
                                    <th style="text-align:center">Stade</th>
                                </tr>
                                <?php
                                if($poules = CommunDb::getAllMatchData(TB_POULES,[["phases_idphases",$phases[$i]["idphases"]]])){
                                    $nbrMatchsPoule = NBR_MATCHS_PHASE_POULES/count($poules);
                                    for ($j=0; $j < count($poules) ; $j++) {
                                        for ($k=0; $k < $nbrMatchsPoule; $k++) {
                                            ?>
                                            <tr>
                                                <?php
                                                if($k==0){
                                                     ?>
                                                    <td rowspan="<?php echo $nbrMatchsPoule; ?>"><span style="color:blue;font-weight:bold"><?php echo $poules[$j]["poulesName"]; ?></span>
                                                        <br /><span style="color:red"><br /><i>Les dates des matchs de poules doivent être antérieures aux dates des matchs fianals</i></span>
                                                    </td>
                                                    <?php
                                                } ?>
                                                <td>
                                                    <input type="hidden" name="rencontre[]" value="<?php echo $rencontresId[$cmpt]["idrencontres"]; ?>">
                                                    <input type="hidden" name="idPhases[]" value="<?php echo $phases[$i]["idphases"]; ?>">
                                                    Match <?php  echo ($k+1)."-".$poules[$j]["poulesName"][strlen($poules[$j]["poulesName"])-1];  ?></td>
                                                <td>
                                                    <?php
                                                    if($cmpt==0){
                                                        if($rencontresId[$cmpt]["rencontresDate"]){
                                                            $hrs = substr($rencontresId[$cmpt]["rencontresDate"],11,5);
                                                        }else{
                                                            $hrs = "00:00";
                                                        }
                                                        getDateAndTimeInput($dateDebut." ".$hrs,true);
                                                    }else{
                                                        getDateAndTimeInput($rencontresId[$cmpt]["rencontresDate"]);
                                                    }
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                        $nameInputArbitre = "arbitre".$cmpt;
                                                        getArbitreInput($nameInputArbitre,$rencontresId[$cmpt]["idrencontres"],$rencontresId[$cmpt]["rencontresArbitre"]);
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                        getInputStade($rencontresId[$cmpt]["stades_idstades"]);
                                                    ?>
                                                </td>
                                            </tr>
                                            <?php
                                            $cmpt++;
                                        }
                                        ?>
                                        <?php
                                    }
                                }
                                ?>
                            </table>
                        <?php
                        $cmptT=$cmpt;
                    }else{
                        echo "Phase Non programmé";
                    }
                    break;
                case 'Phase finale':
                        if($rencontresId = CommunDb::getAllMatchData(TB_RENCONTRES,[["phases_idphases",$phases[$i]["idphases"]]])){
                            $cmpt=0;
                            ?>
                            <table class="table">
                                <tr>
                                    <th style="text-align:center;width:100px">Niveau</th>
                                    <th style="text-align:center;width:150px">Match</th>
                                    <th style="text-align:center;width:250px">Date et heure</th>
                                    <th style="text-align:center;width:180px">Arbitre</th>
                                    <th style="text-align:center">Stade</th>
                                </tr>
                                <?php
                                $matchsQtName=array(
                                    "<b>1<sup>er</sup>Poul A</b> <i>Vs</i> <b>2<sup>e</sup>Poul B</b>",
                                    "<b>1<sup>er</sup>Poul D</b> <i>Vs</i> <b>2<sup>e</sup>Poul C</b>",
                                    "<b>1<sup>er</sup>Poul B</b> <i>Vs</i> <b>2<sup>e</sup>Poul A</b>",
                                    "<b>1<sup>er</sup>Poul C</b> <i>Vs</i> <b>2<sup>e</sup>Poul D</b>"
                                );
                                $matchsDmName=array(
                                    "<b>V 1<sup>er</sup>Qrt</b> <i>Vs</i> <b>V 4<sup>e</sup>Qrt</b>",
                                    "<b>V 2<sup>er</sup>Qrt</b> <i>Vs</i> <b>V 3<sup>e</sup>Qrt</b>"
                                );
                                for ($l=0; $l <4 ; $l++) {
                                    ?>
                                    <tr>
                                        <?php if($l==0){
                                            ?><td rowspan="4"><span style="color:green;font-weight:bold">Quarts de finale</span>
                                                <br /><span style="color:red"><br /><i>Les dates des matchs des <sup>1</sup>/<sub>4</sub> de finales doivent être antérieures aux dates des matchs des <sup>1</sup>/<sub>2</sub> fianals</i></span>
                                            </td><?php
                                        } ?>
                                        <td>
                                            <input type="hidden" name="rencontre[]" value="<?php echo $rencontresId[$cmpt]["idrencontres"]; ?>">
                                            <input type="hidden" name="idPhases[]" value="<?php echo $phases[$i]["idphases"]; ?>">
                                            <?php echo $matchsQtName[$l]; ?>
                                        </td>
                                        <td>

                                            <?php
                                                getDateAndTimeInput($rencontresId[$cmpt]["rencontresDate"]);
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                                $nameInputArbitre = "arbitre".$cmptT;
                                                getArbitreInput($nameInputArbitre,$rencontresId[$cmpt]["idrencontres"],$rencontresId[$cmpt]["rencontresArbitre"]);

                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                                getInputStade($rencontresId[$cmpt]["stades_idstades"]);
                                            ?>
                                        </td>
                                    </tr>
                                    <?php
                                    $cmpt++;
                                    $cmptT++;
                                }
                                for ($l=0; $l <2 ; $l++) {
                                    ?>
                                    <tr>
                                        <?php if($l==0){
                                            ?><td rowspan="2"><span style="color:red;font-weight:bold">1/2 Finale</span></td><?php
                                        } ?>
                                        <td><input type="hidden" name="rencontre[]" value="<?php echo $rencontresId[$cmpt]["idrencontres"]; ?>">
                                            <input type="hidden" name="idPhases[]" value="<?php echo $phases[$i]["idphases"]; ?>">
                                            <?php echo $matchsDmName[$l]; ?>
                                        </td>
                                        <td>
                                            <?php
                                            getDateAndTimeInput($rencontresId[$cmpt]["rencontresDate"]);
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                                $nameInputArbitre = "arbitre".$cmptT;
                                                getArbitreInput($nameInputArbitre,$rencontresId[$cmpt]["idrencontres"],$rencontresId[$cmpt]["rencontresArbitre"]);
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                                getInputStade($rencontresId[$cmpt]["stades_idstades"]);

                                            ?>
                                        </td>
                                    </tr>
                                    <?php
                                    $cmpt++;
                                    $cmptT++;
                                }
                                 ?>
                                 <tr>
                                     <td colspan="2" >
                                         <input type="hidden" name="rencontre[]" value="<?php echo $rencontresId[$cmpt]["idrencontres"]; ?>">
                                         <input type="hidden" name="idPhases[]" value="<?php echo $phases[$i]["idphases"]; ?>">
                                         <span style="color:rgb(195,195,195);font-weight:bold">Troisiéme place</span></td>

                                     <td>
                                         <?php
                                         getDateAndTimeInput($rencontresId[$cmpt]["rencontresDate"]);
                                         ?>
                                     </td>
                                     <td>
                                         <?php
                                             $nameInputArbitre = "arbitre".$cmptT;
                                             getArbitreInput($nameInputArbitre,$rencontresId[$cmpt]["idrencontres"],$rencontresId[$cmpt]["rencontresArbitre"]);
                                         ?>
                                     </td>
                                     <td>
                                         <?php
                                            getInputStade($rencontresId[$cmpt]["stades_idstades"]);
                                             $cmpt++;
                                             $cmptT++;
                                         ?>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td colspan="2" >
                                         <input type="hidden" name="rencontre[]" value="<?php echo $rencontresId[$cmpt]["idrencontres"]; ?>">
                                         <input type="hidden" name="idPhases[]" value="<?php echo $phases[$i]["idphases"]; ?>">
                                         <b><span style="color:red;font-weight:bold;font-size:15px">Finale</span></b></td>

                                     <td>
                                         <?php
                                            getDateAndTimeInput($rencontresId[$cmpt]["rencontresDate"]);
                                         ?>
                                     </td>
                                     <td>
                                         <?php
                                            $nameInputArbitre = "arbitre".$cmptT;
                                            getArbitreInput($nameInputArbitre,$rencontresId[$cmpt]["idrencontres"],$rencontresId[$cmpt]["rencontresArbitre"]);
                                         ?>
                                     </td>
                                     <td>
                                         <?php
                                            getInputStade($rencontresId[$cmpt]["stades_idstades"]);
                                            $cmpt++;
                                            $cmptT++;
                                         ?>
                                     </td>
                                 </tr>
                            </table>
                            <?php
                        }
                    break;

                default:
                    echo "<center>
                            <h1>Phase non prise en compte!</h1>
                         </center>";
                    break;
            }
        }
    }
    ?>
    <hr>
    <?php
}
 ?>
