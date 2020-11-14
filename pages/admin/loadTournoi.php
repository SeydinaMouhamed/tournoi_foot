<?php
    if(isset($_SESSION["compte"])){
        require_once("fonctions/admin.inc.php");
         ?>
        <header class="header">
            <?php
            getTopWeb();
            getMenuAdmin();
            ?>
        </header>
        <div style="min-height:600px;" class="container">
            <center>
                <h2 style="color:grey">CREATION D'UN TOURNOI</h2>
            </center>
                        <div class="col-lg-12">
        							<div class="panel">

        								<!-- Form wizard with Validation -->
        								<!--===================================================-->
        								<div id="demo-bv-wz">
        									<div class="wz-heading">

        										<!--Progress bar-->
        										<div class="progress progress-sm progress-light-base">
        											<div class="progress-bar progress-bar-primary" style="width: 0%; margin: 0px 12.5%;"></div>
        										</div>

        										<!--Nav-->
        										<ul class="wz-icon-bw wz-nav-off wz-steps">
        											<li class="col-xs-3 active">
        												<a data-toggle="tab" href="#demo-bv-tab1" title="Informations sur le tournoi" aria-expanded="true">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-mint">
        													<i class="wz-icon fa fa-info fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-3">
        												<a data-toggle="tab" href="#demo-bv-tab2" title="Profile">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-info">
        													<i class="wz-icon fa fa-user fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-3">
        												<a data-toggle="tab" href="#demo-bv-tab3" title="Address">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-warning">
        													<i class="wz-icon fa fa-home fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        											<li class="col-xs-3">
        												<a data-toggle="tab" href="#demo-bv-tab4" title="Finish">
        													<span class="icon-wrap icon-wrap-sm icon-circle bg-success">
        													<i class="wz-icon fa fa-heart fa-2x"></i>
        													<i class="wz-icon-done fa fa-check fa-2x"></i>
        												</span>
        												</a>
        											</li>
        										</ul>
        									</div>

        									<!--Form-->
        									<form id="demo-bv-wz-form" class="form-horizontal bv-form" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
        										<div class="panel-body">
        											<div class="tab-content">

        												<!--First tab-->
        												<div id="demo-bv-tab1" class="tab-pane active in">
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Nom du tournoi </label>
        														<div class="col-lg-7">
        															<input type="text" class="form-control" name="tournoisName" placeholder="Nom du tournoi" data-bv-field="tournoisName"><i class="form-control-feedback" data-bv-icon-for="tournoisName" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="tournoisName" data-bv-result="NOT_VALIDATED" style="display: none;">The tournoi name is required.</small></div>
        													</div>
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Image publicitaire</label>
        														<div class="col-lg-7">
        															<input type="file" accept="image/*" class="form-control" name="imgPubTournoi" data-bv-field="imgNam"><i class="form-control-feedback" data-bv-icon-for="imgNam" style="display: none;"></i>
            														<small class="help-block" data-bv-validator="imgPubTournoi" data-bv-for="imgPubTournoi" data-bv-result="NOT_VALIDATED" style="display: none;">The email address is required and can't be empty</small>
                                                                </div>
        													</div>
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Date de début</label>
        														<div class="col-lg-7">
        															<input type="date" style="height:30px;" class="form-control" name="imgPubTournoi" data-bv-field="imgNam"><i class="form-control-feedback" data-bv-icon-for="imgNam" style="display: none;"></i>
            														<small class="help-block" data-bv-validator="imgNam" data-bv-for="imgNam" data-bv-result="NOT_VALIDATED" style="display: none;">The email address is required and can't be empty</small>
                                                                </div>
        													</div>
                                                            <div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">A propos</label>
        														<div class="col-lg-7">
                                                                    <textarea class="form-control" placeholder="Plus d'infos sur le tournoi" name="name" rows="4" cols="80"></textarea>
            													</div>
        													</div>
        												</div>

        												<!--Second tab-->
        												<div id="demo-bv-tab2" class="tab-pane fade">
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">First name</label>
        														<div class="col-lg-7">
        															<input type="text" placeholder="First name" name="firstName" class="form-control" data-bv-field="firstName"><i class="form-control-feedback" data-bv-icon-for="firstName" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="firstName" data-bv-result="NOT_VALIDATED" style="display: none;">The first name is required and cannot be empty</small><small class="help-block" data-bv-validator="regexp" data-bv-for="firstName" data-bv-result="NOT_VALIDATED" style="display: none;">The first name can only consist of alphabetical characters and spaces</small></div>
        													</div>
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Last name</label>
        														<div class="col-lg-7">
        															<input type="text" placeholder="Last name" name="lastName" class="form-control" data-bv-field="lastName"><i class="form-control-feedback" data-bv-icon-for="lastName" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="lastName" data-bv-result="NOT_VALIDATED" style="display: none;">The last name is required and cannot be empty</small><small class="help-block" data-bv-validator="regexp" data-bv-for="lastName" data-bv-result="NOT_VALIDATED" style="display: none;">The last name can only consist of alphabetical characters and spaces</small></div>
        													</div>
        												</div>

        												<!--Third tab-->
        												<div id="demo-bv-tab3" class="tab-pane">
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Phone Number</label>
        														<div class="col-lg-7">
        															<input type="text" placeholder="Phone number" name="phoneNumber" class="form-control" data-bv-field="phoneNumber"><i class="form-control-feedback" data-bv-icon-for="phoneNumber" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="phoneNumber" data-bv-result="NOT_VALIDATED" style="display: none;">The phone number is required and cannot be empty</small><small class="help-block" data-bv-validator="digits" data-bv-for="phoneNumber" data-bv-result="NOT_VALIDATED" style="display: none;">The value can contain only digits</small></div>
        													</div>
        													<div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Address</label>
        														<div class="col-lg-7">
        															<input type="text" placeholder="Phone number" name="address" class="form-control" data-bv-field="address"><i class="form-control-feedback" data-bv-icon-for="address" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="address" data-bv-result="NOT_VALIDATED" style="display: none;">The address is required</small></div>
        													</div>
                                                            <div class="form-group has-feedback">
        														<label class="col-lg-3 control-label">Email address</label>
        														<div class="col-lg-7">
        															<input type="email" class="form-control" name="email" placeholder="Email" data-bv-field="email"><i class="form-control-feedback" data-bv-icon-for="email" style="display: none;"></i>
        														<small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">The email address is required and can't be empty</small><small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">The input is not a valid email address</small></div>
        													</div>

        												</div>

        												<!--Fourth tab-->
        												<div id="demo-bv-tab4" class="tab-pane  mar-btm text-center">
        													<h4>Thank you</h4>
        													<p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
        												</div>
        											</div>
        										</div>

        										<!--Footer button-->
        										<div class="panel-footer text-right">
        											<div class="box-inline">
        												<button type="button" class="previous btn btn-primary disabled">Previous</button>
        												<button type="button" class="next btn btn-primary">Next</button>
        												<button type="button" class="finish btn btn-warning" disabled="" style="display: none;">Finish</button>
        											</div>
        										</div>
        									</form>
        								</div>
        								<!--===================================================-->
        								<!-- End Form wizard with Validation -->

        							</div>
        						</div>
            
        </div>
        <?php
    }else{
        die("IMPOSSIBLE D'AFFICHER LE CONTENU DE CETTE PAGE");
    }
?>
