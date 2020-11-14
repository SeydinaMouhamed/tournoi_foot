<?php
define( "LINK_WEB_SITE", "http://caf.sytrapas.sn/" );
/*
    DEFINITION DES CONSTANTES DE LA BASE DE DONNES
*/
define( "DB_DSN", "mysql:host=127.0.0.1;dbname=foot;charset=utf8" );
define( "DB_USERNAME", "root" );
define( "DB_PASSWORD", "root" );
define( "TB_ARBITRES","arbitres" );
define( "TB_ARBITRES_RENCONTRES","arbitres_rencontres" );
define( "TB_ENTRAINEURS","entraineurs" );
define( "TB_EQUIPES","equipes" );
define( "TB_EVENEMENTS","evenements" );
define( "TB_JOUEURS","joueurs" );
define( "TB_JOUEURS_RENCONTRES","joueurs_rencontres" );
define( "TB_PERSONNES","personnes" );
define( "TB_PHASES","phases" );
define( "TB_POULES","poules" );
define( "TB_POULES_EQUIPES","poules_equipes" );
define( "TB_RENCONTRES","rencontres" );
define( "TB_REPORTAIRES","reportaires" );
define( "TB_STADES","stades" );
define( "TB_TOURNOIS","tournois" );
define( "TB_UTILISATEURS","utilisateurs" );
define( "TB_TOURNOIS_EQUIPE_ENTRAINEUR","tournois_equipe_entraineur" );

/*
    DEFINITION DES CONSTANTES DE L'APPLICATION
*/
define( "CAF_NUMBER","+202 3824 7272");
define( "CAF_EMAIL","contact@caf.org");
define( "CONTENT_PAGES","pages/" );
define( "CONTENT_IMG","img/");
define( "DEFAULT_PAGE_NAME","accueil" );
define( "NOT_FOUND_PAGE_NAME","notFound" );
define( "PATH_WEB",CONTENT_PAGES."web/" );
define( "PATH_ADMIN",CONTENT_PAGES."admin/" );
define( "PATH_ARBITRE",CONTENT_PAGES."arbitre/" );
define( "PATH_ENTRAINEUR",CONTENT_PAGES."entraineurs/" );
define( "PATH_JOURNALISTE",CONTENT_PAGES."journaliste/" );
define( "PATH_REPORTAIRE_EV_ARBITRE",CONTENT_PAGES."reportairesEvenementsArbitre/" );
define( "PATH_REPORTAIRE_EV_JOUEUR",CONTENT_PAGES."reportairesEvenementsJoueur/" );
define( "PATH_REPORTAIRE",CONTENT_PAGES."reportaire/" );

define( "PATH_DRAPEAU",CONTENT_IMG."drapeaux/" );
define( "PATH_EMBLEME",CONTENT_IMG."emblemes/" );
define( "PATH_PUB_TOURNOI",CONTENT_IMG."tournoisPubs/" );
define( "PATH_STADES",CONTENT_IMG."stades/" );
define( "PATH_JOUEURS",CONTENT_IMG."joueurs/" );


define( "NBR_MAX_EQUIPES",16);
define( "NBR_MATCHS_PHASE_POULES",24);
define( "NBR_MATCHS_PHASE_FINALES",8);
define( "NBR_MATCH_QRT_FINALE",4);
define( "NBR_MATCH_DM_FINALE",NBR_MATCH_QRT_FINALE/2);
define( "NBR_MAX_INTERVALLE_OCCUPATION_STADE",3);
define( "NBR_SEC_OCCUPATION",NBR_MAX_INTERVALLE_OCCUPATION_STADE*60*60);
define( "NBR_MATCH_TOURNOI",NBR_MATCHS_PHASE_POULES+NBR_MATCHS_PHASE_FINALES);

define( "ETAT_MATCH_NON_JOUE",0);
define( "ETAT_DEBUT1_MATCH",1);
define( "ETAT_FIN1_MATCH",2);
define( "ETAT_DEBUT2_MATCH",3);
define( "ETAT_FIN2_MATCH",4);
define( "ETAT_DEB1_PROL_MATCH",5);
define( "ETAT_FIN1_PROL_MATCH",6);
define( "ETAT_DEB2_PROL_MATCH",7);
define( "ETAT_FIN2_PROL_MATCH",8);
define( "ETAT_DEB_TB_MATCH",9);
define( "ETAT_FIN_TB_MATCH",10);
define( "ETAT_MATCH_TERMINE",ETAT_FIN_TB_MATCH);
define( "ETAT_MATCH_PAUSE",-1);

define( "MATCH_NON_JOUER",0);
define( "MATCH_EN_COURS",1);
define( "MATCH_EN_PAUSE",2);
define( "MATCH_TERMINE",3);



define( "ETAPE_NOT_FOUND",0);
define( "ETAPE_REMPLISSAGE_MANNUEL",-1);
define( "ETAPE_MATCHS_POULE",1);
define( "ETAPE_MATCHS_QRT",2);
define( "ETAPE_MATCHS_DMF",3);
define( "ETAPE_MATCH_CLS",4);
define( "ETAPE_MATCH_FINALE",5);
define( "ETAPE_TOURNOI_TERMINE",6);


define( "DEFAULT_WEB_PAGE",PATH_WEB.DEFAULT_PAGE_NAME );
define( "DEFAULT_ADMIN_PAGE",PATH_ADMIN.DEFAULT_PAGE_NAME );
define( "DEFAULT_ARBITRE_PAGE",PATH_ARBITRE.DEFAULT_PAGE_NAME );
define( "DEFAULT_ENTRAINEUR_PAGE",PATH_ENTRAINEUR.DEFAULT_PAGE_NAME );
define( "DEFAULT_JOURNALISTE_PAGE",PATH_JOURNALISTE.DEFAULT_PAGE_NAME );
define( "DEFAULT_REPORTAIRE_PAGE",PATH_REPORTAIRE.DEFAULT_PAGE_NAME );

define( "CONTENT_PAGE_NOT_FOUND",CONTENT_PAGES.NOT_FOUND_PAGE_NAME.".php" );
define( "D_TODAY",intval(date("d")));
define( "M_TODAY",intval(date("m")));
define( "Y_TODAY",intval(date("Y")));

define( "FILES_SCAN_IGNORE",array(".","..","index.php"));

/*
    PARAMETTRE DE LA LANGUE
*/
define( "DEFINED_LANGS",array("fr","en") );
define( "DEFAULT_LANG","fr" );

?>
