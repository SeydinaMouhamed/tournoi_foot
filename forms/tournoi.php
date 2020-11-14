<?php
function getFormTournoi($idtournois="",$tournoisName="",$tournoisDateDebut="",$tournoisImgPub="",$tournoisApropos=""){
    ?>
    <input type="hidden" name="idtournois" value="<?php echo $idtournois; ?>" />

    <div class="form-group has-feedback">
        <label class="col-lg-3 control-label">Nom du tournoi : </label>
        <div class="col-lg-7">
            <input type="text" class="form-control" name="tournoisName" value="<?php echo $tournoisName; ?>" placeholder="Nom du tournoi" data-bv-field="tournoisName"><i class="form-control-feedback" data-bv-icon-for="tournoisName" style="display: none;"></i>
        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="tournoisName" data-bv-result="NOT_VALIDATED" style="display: none;">Le nom du tournoi est obligatoire.</small></div>
    </div>
    <div class="form-group has-feedback">
        <label class="col-lg-3 control-label">Date de début du tournoi : </label>
        <div class="col-lg-7">
            <input type="date" style="height:30px;" class="form-control" value="<?php echo $tournoisDateDebut; ?>" required name="tournoisDateDebut" data-bv-field="tournoisDateDebut"><i class="form-control-feedback" data-bv-icon-for="tournoisDateDebut" style="display: none;"></i>
            <small class="help-block" data-bv-validator="tournoisDateDebut" data-bv-for="tournoisDateDebut" data-bv-result="NOT_VALIDATED" style="display: none;">Date de début du tournoi</small>
        </div>
    </div>
    <div class="form-group has-feedback">
        <label class="col-lg-3 control-label">Image publicitaire : </label>
        <div class="col-lg-7">
            <input type="file" accept="image/*" <?php if(!$tournoisImgPub){ echo "required"; } ?> class="form-control" name="tournoisImgPub" data-bv-field="tournoisImgPub"><i class="form-control-feedback" data-bv-icon-for="tournoisImgPub" style="display: none;"></i>
            <small class="help-block" data-bv-validator="tournoisImgPub" data-bv-for="tournoisImgPub" data-bv-result="NOT_VALIDATED" style="display: block;">Vous devez choisir une image</small>
        </div>
    </div>
    <div class="form-group has-feedback">
        <label class="col-lg-3 control-label">A propos du tournoi : </label>
        <div class="col-lg-7">
            <textarea class="form-control" placeholder="Plus d'infos sur le tournoi" name="tournoisApropos" ><?php echo $tournoisApropos; ?></textarea>
        </div>
    </div>
    <?php
}
 ?>
