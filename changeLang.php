<?php
    session_start();
    if(!isset($_REQUEST["section"])){
        $section="web";
    }
    if(!isset($_REQUEST["page"]) OR empty($_REQUEST["page"])){
        $page = "accueil";
    }
    if(!isset($_REQUEST["newLang"])){
        $newLang = "fr";
    }else{
        if(in_array($_REQUEST["newLang"],["fr","en"])){
            $newLang = $_REQUEST["newLang"];
        }else{
            $newLang = "fr";
        }
    }
    $_SESSION["lang"]=$newLang;
    header("Location:index.php?s=$section&page=$page");
?>
