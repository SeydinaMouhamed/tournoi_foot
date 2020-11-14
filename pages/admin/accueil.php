    <?php
    if(isset($_SESSION["compte"])){
        require_once("fonctions/admin.inc.php");
         ?>
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
            getMenuAdmin();
            ?>
        </header>
        <div style="min-height:500px"  class="container"><br />
            <?php
            if($tournois = Tournois::getTournois()){
                for ($i=0; $i <c_count($tournois) ; $i++) {
                    $etapeCreation = $tournois[$i]->getValueEncoded("tournoisEtapeCreation");
                    if($etapeCreation <5){
                        $nomTournoiEC[] = $tournois[$i]->getValueEncoded("tournoisName");
                        $idTournoisEC[] = $tournois[$i]->getValueEncoded("idtournois");
                    }
                }
            }
            if(isset($nomTournoiEC)){
                $nbrTEC = count($nomTournoiEC);
                ?>
                <center>
                    <h2 class"titre">Vous avez <?php echo $nbrTEC; ?> en cours de création!</h2>
                    <ul class="menuTournoi"><?php
                        for ($i=0; $i < $nbrTEC ; $i++) {
                            ?><li><a href="index.php?page=createNewTournoi&idTournoi=<?php echo $idTournoisEC[$i]; ?>" ><?php echo $nomTournoiEC[$i];  ?></a></li><?php
                        }
                        ?>
                    </ul>
                </center>
                <?php
            }
            ?>
        </div>
        <?php
    }else{
        header("Location../");
    }
 ?>
