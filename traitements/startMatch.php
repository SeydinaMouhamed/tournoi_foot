<?php
if(isset($_POST["startMatch"],$_SESSION["compte"],$_SESSION["userId"],$_SESSION["matchControlId"]) && $_SESSION["compte"]=="reportairesEvenementsArbitre"){
    $test = Matchs::startMatch(intval($_SESSION["matchControlId"]));
}
?>
