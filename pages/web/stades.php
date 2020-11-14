<?php
    require_once("classes/Stades.class.php");
    if(isset($page)){
        getHeaderWeb();
        ?>
        <div style="min-height:500px" class="container">

            <center>
                <h3>STADES</h3>
            </center>
            <div style="background-color:cornsilk;" class="col-md-12">

            <?php
            /*showLastMatch();
            showNews();
            */
            if($stades=Stades::getStades()){
                for ($i=0; $i <count($stades) ; $i++) {
                    $stade = $stades[$i];
                    $imgStade = $stade->getValueEncoded("stadesImgIlust");
                    $nomStade = $stade->getValueEncoded("stadesName");
                    $stadesAdresse = $stade->getValueEncoded("stadesAdresse");
                    $stadesDimensions = $stade->getValueEncoded("stadesDimensions");
                    $stadesNbrPlaces = $stade->getValueEncoded("stadesNbrPlaces");
                    ?>
                    <div style="margin-top:10px;" class="col-md-12">
                        <div class="col-md-4">
                            <img src="img/stades/<?php echo $imgStade; ?>" alt="">
                        </div>
                        <div class="col-md-8">
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        Nom du stade :
                                    </td>
                                    <td>
                                        <?php echo $nomStade; ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Adresse :
                                    </td>
                                    <td>
                                        <?php echo $stadesAdresse; ?>
                                    </td>
                                </tr>
                                <?php
                                if ($stadesDimensions) {
                                    ?>
                                    <tr>
                                        <td>
                                            Dimensions
                                        </td>
                                        <td>
                                            <?php echo $stadesDimensions; ?>
                                        </td>
                                    </tr>
                                    <?php
                                }
                                ?>
                                <tr>
                                    <td>
                                        Nombre de places
                                    </td>
                                    <td>
                                        <?php echo $stadesNbrPlaces; ?>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="clearfix">
                        <hr>
                    </div>
                    <?php
                }
            }else{
                echo "<center>
                        <h3>Aucun stade enregistré</h3>
                      </center>";
            }
            ?>
        </div>
        </div>
        <br><br>
        <?php
    }else{
        header("Location:../");
    }
?>
