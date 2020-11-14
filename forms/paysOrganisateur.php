<?php
function getOptionSelected($selectedEquipes){
    $opt="";
    for ($i=0; $i < count($selectedEquipes); $i++) {
        if($infosEquipe = Equipes::getEquipe($selectedEquipes[$i])){
            $equipeName = $infosEquipe->getValueEncoded("equipesName");
            $equipeId = $infosEquipe->getValueEncoded("idequipes");
            $opt.="<option value='{$equipeId}'>$equipeName</option>";
        }
    }
    return $opt;
}
function getFormSelectPaysOraganisateur($idTournoi,$selectedEquipes){
    //773554129
    //
    //var_dump($selectedEquipes);
    ?>
    <center>
        <br />
        <form style="width:50%" class="" action="" method="post">
            <input type="hidden" name="idTournoi" value="<?php echo $idTournoi; ?>">
            <div style="text-align:center" class="input-group">
              <span class="input-group-addon">Pays organisateur</span>
              <select style="height:50px" class="form-control" name="paysOrganisateur">
                  <option value="">---Selectionner le pays organisateur---</option>
                  <?php
                  echo getOptionSelected($selectedEquipes);
                   ?>
              </select>
            </div>
            <input style="height:30px" type="submit" class="btn btn-success" name="selectPaysOrganisateur" value="VALIDER">
        </form>
        <br />
    </center>
    <?php
}

?>
