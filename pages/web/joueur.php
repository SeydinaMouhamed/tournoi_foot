<?php
if(isset($page)){
    getHeaderWeb();
    if(isset($_GET["idjoueur"])){
        $idjoueur=intval($_GET["idjoueur"]);
        $infosJoueur = Joueurs::getJoueur($idjoueur);
        if($infosJoueur){
            $idJoueur = $infosJoueur->getValueEncoded("idjoueurs");
            $idEquipe = $infosJoueur->getValueEncoded("equipes_idequipes");
            $infosEquipe = Equipes::getEquipe($idEquipe);
            if($infosEquipe){
                $nomJoueur = $infosJoueur->getValueEncoded("personnesNom");
                $prenomJoueur = $infosJoueur->getValueEncoded("personnesPrenom");
                $tailleJoueur = $infosJoueur->getValueEncoded("joueursTaille");
                $joueursPied = $infosJoueur->getValueEncoded("joueursPied");
                $joueursPoids = $infosJoueur->getValueEncoded("joueursPoids");
                $joueursLicence = $infosJoueur->getValueEncoded("joueursLicence");
                $joueursPoste = implode(" ",explode("_",$infosJoueur->getValueEncoded("joueursPoste")));
                $joueursPhotoProfil = $infosJoueur->getValueEncoded("joueursPhotoProfil");
                $personnesDDN = $infosJoueur->getValueEncoded("personnesDDN");
                $personnesLDN = $infosJoueur->getValueEncoded("personnesLDN");
                $personnesNationalite = $infosJoueur->getValueEncoded("personnesNationalite");

                $equipeNom = $infosEquipe->getValueEncoded("equipesName");
                $equipesDrapeau = $infosEquipe->getValueEncoded("equipesDrapeau");
                $equipesEmbleme = $infosEquipe->getValueEncoded("equipesEmbleme");
                ?>
                <div  style="min-height:500px"  class="container">
                    <br />
                    <h4 style="text-align:center;background-color:rgba(195,195,195,0.8);padding:10px;color:blue">INFORMATIONS SUR <?php echo $prenomJoueur." ".$nomJoueur; ?></h4>
                    <hr />
                    <div class="col-lg-12" style="background-color:white;padding:20px" >

                <div class="col-lg-12">
                    <div class="col-lg-4">
                        <img class="img-thumbnail" src="<?php echo PATH_JOUEURS.$joueursPhotoProfil; ?>" alt="">
                    </div>
                    <div class="col-lg-6">
                        <table class="table table-striped">
                            <tr>
                                <td>prenom</td>
                                <td><?php echo $prenomJoueur; ?></td>
                            </tr>
                            <tr>
                                <td>Nom</td>
                                <td><?php echo $nomJoueur; ?></td>
                            </tr>
                            <tr>
                                <td>Taille</td>
                                <td><?php echo $tailleJoueur; ?>m</td>
                            </tr>
                            <tr>
                                <td>Pied</td>
                                <td><?php echo $joueursPied; ?></td>
                            </tr>
                            <tr>
                                <td>Poste</td>
                                <td><?php echo $joueursPoste; ?></td>
                            </tr>
                            <tr>
                                <td>Date de naissance</td>
                                <td><?php echo $personnesDDN; ?></td>
                            </tr>
                            <tr>
                                <td>Lieu de naissance</td>
                                <td><?php echo $personnesLDN; ?></td>
                            </tr>
                            <tr>
                                <td>Nationalité</td>
                                <td><?php echo $personnesNationalite; ?></td>
                            </tr>
                            <tr>
                                <td>Licence</td>
                                <td><span style="color:red"><?php echo $joueursLicence; ?></span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-2">
                        <center>
                            <p>
                                <b>DRAPEAU</b>
                                <img class="img-responsive" style="border:1px solid grey" src="<?php echo PATH_DRAPEAU.$equipesDrapeau; ?>" alt=""><br />
                                Equipe : <?php echo $equipeNom; ?><hr />
                                <b>EMBLEME</b><br />
                                <img class="img-circle" style="border:1px solid grey" src="<?php echo PATH_EMBLEME.$equipesEmbleme; ?>" alt=""><br />

                            </p>
                        </center>
                    </div>
                </div>
            </div>
        </div><br /></div>
                <?php

            }
        }

    }else{
        echo "<center>
        <h1>PAGE NOT FOUND</h1>
        </center>";
    }
}else{
    header("Location:../");
}
?>
