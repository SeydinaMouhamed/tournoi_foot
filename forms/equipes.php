<?php
function getFormSelectionEquipes($thisTournoi,$tabEquipes,$tabEquipesSelected=array()){
    if($thisTournoi && $tabEquipes){
        $idtournois = $thisTournoi->getValueEncoded("idtournois");
        ?>
        <input type="hidden" name="id_tournoi" value="<?php echo $idtournois; ?>">
        <table class="table" style="width:100%">
        <tr>
            <th>N°</th>
            <th>Option</th>
            <th>Drapeau</th>
            <th>Equipe</th>
            <th>Embleme</th>
        </tr>
        <?php
        for ($i=0; $i < count($tabEquipes) ; $i++) {
            $checkOption="";
            if(in_array($tabEquipes[$i]->getValueEncoded("idequipes"),$tabEquipesSelected)){
                $checkOption="checked";
            }
            $idequipes = $tabEquipes[$i]->getValueEncoded("idequipes");
            $drapeau = $tabEquipes[$i]->getValueEncoded("equipesDrapeau");
            $embleme = $tabEquipes[$i]->getValueEncoded("equipesEmbleme");
            $nom = $tabEquipes[$i]->getValueEncoded("equipesName");
            ?>
            <tr>
                <td><?php echo $i+1; ?></td>
                <td><input onchange="changeNbrEquipes(this.checked);" type="checkbox" name="equipes[]" id="option<?php echo $i; ?>" value="<?php echo $idequipes; ?>" <?php echo $checkOption; ?> ></td>
                <td>
                    <label for="option<?php echo $i; ?>">
                        <?php
                        if($drapeau && file_exists(PATH_DRAPEAU.$drapeau)){
                            ?>
                            <img style="width:30px;height:30px;border:1px solid black" src="<?php echo PATH_DRAPEAU.$drapeau; ?>" alt="drapeau <?php echo $nom; ?>" title="drapeau <?php echo $nom; ?>" >
                            <?php
                        }
                        ?>
                    </label>
                </td>
                <td>
                    <label for="option<?php echo $i; ?>">
                        <b><?php echo $nom ?></b>
                    </label>
                </td>
                <td>
                    <?php
                    if($embleme && file_exists(PATH_EMBLEME.$embleme)){
                        ?>
                        <label for="option<?php echo $i; ?>">
                            <img style="width:30px;height:30px;border:1px solid black;border-radius:30px;"  src="<?php echo PATH_EMBLEME.$embleme; ?>" alt="embleme <?php echo $nom; ?>"  title="embleme <?php echo $nom; ?>" >
                        </label>
                            <?php
                    }
                    ?>
                </td>
            </tr>
            <?php
        } ?>
    </table><?php
    }
}
?>
