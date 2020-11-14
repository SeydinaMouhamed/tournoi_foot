<?php
    function getListeOptionENtraineurs($idequipes){
        $listeOptions = "";
        if($entraineurs = Entraineurs::getEntraineurs()){
        //    var_dump($entraineurs);
            for ($i=0; $i <count($entraineurs) ; $i++) {
                $nom = $entraineurs[$i]->getValueEncoded("personnesNom");
                $prenom = $entraineurs[$i]->getValueEncoded("personnesPrenom");
                $idEntraineur = $entraineurs[$i]->getValueEncoded("identraineurs");
                $idEquipeEntraineur = $entraineurs[$i]->getValueEncoded("equipes_idequipes");
                $opt="";
                if($idEquipeEntraineur==$idequipes){$opt=" selected";}
                $listeOptions.="<option value='{$idEntraineur}' $opt >$prenom $nom ($idEntraineur)</option>";
            }
        }
        return $listeOptions;
    }
    function getListeOptionENtraineursRegisted($idequipes,$eqs,$ents){
        $listeOptions = "";
        if($entraineurs = Entraineurs::getEntraineurs()){
            for ($i=0; $i <count($entraineurs) ; $i++) {
                $idEntraineur = $entraineurs[$i]->getValueEncoded("identraineurs");
                $nom = $entraineurs[$i]->getValueEncoded("personnesNom");
                $prenom = $entraineurs[$i]->getValueEncoded("personnesPrenom");
                $idEquipeEntraineur = $entraineurs[$i]->getValueEncoded("equipes_idequipes");
                $opt="";
                for ($j=0; $j < count($ents); $j++) {
                    if(($ents[$j]==$idEntraineur) && ($idequipes==$eqs[$j])){
                        $opt=" selected";
                        break;
                    }
                }
                $listeOptions.="<option value='{$idEntraineur}' $opt >$prenom $nom ($idEntraineur)</option>";
            }
        }
        return $listeOptions;
    }
    function getFormEnregistrementEntraineurs($thisTournoi,$tabEquipes){
        if($thisTournoi && $tabEquipes){
            $idtournois = $thisTournoi->getValueEncoded("idtournois");
            $eqs=array();
            $ents=array();
            if($equipesEntraineurs=CommunDb::getAllMatchData(TB_TOURNOIS_EQUIPE_ENTRAINEUR,[["id_tournoi",$idtournois]])){
                for ($i=0; $i < count($equipesEntraineurs) ; $i++) {
                    if($equipesEntraineurs[$i]["id_entraineur"]){
                        $eqs[] = $equipesEntraineurs[$i]["id_equipe"];
                        $ents[] = $equipesEntraineurs[$i]["id_entraineur"];
                    }
                }
            }
            ?>
            <input type="hidden" name="id_tournoi" value="<?php echo $idtournois; ?>" />

            <table class="table" style="width:100%">
                <caption>
                    <center>
                        <u><b style="color:blue;font-size:17px">SELECTION DES ENTRAINEURS DES EQUIPES DE LA <?php echo $thisTournoi->getValueEncoded("tournoisName"); ?></b></u>
                    </center>
                </caption>

            <tr>
                <th>N°</th>
                <th>Drapeau</th>
                <th>Equipe</th>
                <th>Entraineur <a href="#formAddEntraineur" data-toggle="modal" ><i style="position:absolute;margin-left:5px;margi-top:-5px;" class="fa fa-2x fa-plus-circle"></i></a></th>
                <th>Embleme</th>
            </tr>
            <?php

            for ($i=0; $i < count($tabEquipes); $i++) {
                $equipe = Equipes::getEquipe($tabEquipes[$i]);
                $idequipes = $equipe->getValueEncoded("idequipes");
                $drapeau = $equipe->getValueEncoded("equipesDrapeau");
                $nom = $equipe->getValueEncoded("equipesName");
                $embleme = $equipe->getValueEncoded("equipesEmbleme");
                ?>
                <tr>
                    <td><?php echo $i+1; ?>
                        <input type="hidden" name="equipes[]" value="<?php echo $idequipes; ?>">
                    </td>
                    <td>
                        <?php
                        if($drapeau && file_exists(PATH_DRAPEAU.$drapeau)){
                            ?>
                            <img style="width:30px;height:30px;border:1px solid black" src="<?php echo PATH_DRAPEAU.$drapeau; ?>" alt="drapeau <?php echo $nom; ?>" title="drapeau <?php echo $nom; ?>" >
                            <?php
                        }
                        ?>
                    </td>
                    <td><b><?php echo $nom ?></b></td>
                    <td>
                        <div class="input-group">
                            <select class="form-control" required class="" name="entraineur[]">
                                <option value="">---------------</option>
                                <?php
                                if(!$ents){
                                    echo getListeOptionENtraineurs($idequipes);
                                }else{
                                    echo getListeOptionENtraineursRegisted($idequipes,$eqs,$ents);
                                }
                                 ?>
                            </select>
                        </div>
                    </td>
                    <td>
                        <img style="width:30px;height:30px;border:1px solid black;border-radius:30px;"  src="<?php echo PATH_EMBLEME.$embleme; ?>" alt="embleme <?php echo $nom; ?>"  title="embleme <?php echo $nom; ?>" >
                    </td>
                </tr>
                <?php
            }
             ?>
        </table>
            <?php

        }

    }

?>
