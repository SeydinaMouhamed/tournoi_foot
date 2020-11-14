<?php
    require_once("config/config.php");
    require_once("config/traduct.php");
    require_once("fonctions/commun.inc.php");
    if(isset($_SESSION["compte"])){
        switch ($_SESSION["compte"]) {
            case 'admin':
                $section=PATH_ADMIN;
            break;
            case 'arbitre':
                $section=PATH_ARBITRE;
            break;
            case 'entraineurs':
                $section=PATH_ENTRAINEUR;
            break;
            case 'journaliste':
                $section=PATH_JOURNALISTE;
            break;
            case 'reportairesEvenementsArbitre':
                $section=PATH_REPORTAIRE_EV_ARBITRE;
            break;
            case 'reportairesEvenementsJoueur':
                $section=PATH_REPORTAIRE_EV_JOUEUR;
            break;
            default:
                $section=PATH_WEB;
            break;
        }
        if(isset($_GET["v"]) && $_GET["v"]=="web"){
            $section=PATH_WEB;
        }
    }else{
        $section=PATH_WEB;
    }
    if(!isset($_GET["page"])){
        $page = DEFAULT_PAGE_NAME;
    }else{
        $page=secure($_GET["page"]);
    }
    $pages = scandir($section);
    if(!in_array($page.".php",FILES_SCAN_IGNORE) && in_array($page.".php",$pages)){
        $titre = $page;
        $urlFile = $section.$page.".php";
    }else{
        $titre = "ACCUEIL";
        $urlFile = $section.DEFAULT_PAGE_NAME.".php";
    }
 ?>
