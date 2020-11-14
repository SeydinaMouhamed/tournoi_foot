<?php
    require_once("fonctions/entraineurs.inc.php");
    if(isset($page)){ ?>
        <header class="header">
            <style media="screen">
                h2{
                    color:grey;
                }
                .menuTournoi li{
                }
                .menuTournoi li a{
                    background-color: rgba(0,00,255,0.5);
                    display: block;
                    margin: 1px;
                    color:white;
                    font-weight: bold;
                }

            </style>
            <?php
            getTopWeb();
            getMenuEntraineur();
            ?>
        </header>
        <div style="min-height:500px;" class="container">
            <?php
            //if(Tournois::getTournoisForEquipe($_SESSION["userId"])){    }
            ?>
        </div>
        <?php
    }else{
        header("Location:../");
    }
?>
