<?php
if(isset($page)){
    getHeaderWeb();
        ?>
        <br />
        <h4 style="text-align:center;border:1px solid #8EFF81;background-color:rgba(226, 247, 249, 0.9);width:85%;box-shadow:0px 0px 10px 0px #8EFF81;color:red;margin:auto;padding:5px;color:">LES JOUEURS

        </h4><hr />
        <div  style="min-height:500px"  class="container">

        <input class="form-control" style="width:300px;float:right;padding:10px" id="myInput" type="text" placeholder="Search.."><br /><br />

        <div style="background:url('img/logo-CAF.png') 0px 0px;background-size:100%;">
                <div style="min-height:20px;background-color:white;border-radius:30px"  class="">
            		<table  style="width:100%;box-shadow:0px 0px 30px 0px black;text-align:center" border="1" class="table  table-bordered table-striped">
                        <thead>

                        <tr>
            				<th class="text-center" style="font-size:17px" >N°</th>
            				<th  class="text-center" style="font-size:17px"  >Equipe</th>
            				<th  class="text-center" style="font-size:17px"  >Prenom</th>
            				<th  class="text-center" style="font-size:17px"  >Nom</th>
            				<th  class="text-center" style="font-size:17px"  >Poste</th>
            				<th  class="text-center" style="font-size:17px"  >Licence</th>

            			</tr>
                    </thead>
                    <tbody  id="myTable">
            			<?php
                        if($joueurs = Joueurs::getJoueurs()){
                            for ($i=0; $i <count($joueurs) ; $i++) {
                            		$joueur = $joueurs[$i];
                    				$nom = $joueur->getValueEncoded("personnesNom");
                    				$prenom = $joueur->getValueEncoded("personnesPrenom");
                    				$img = $joueur->getValueEncoded("joueursPhotoProfil");
                                    $idJoueur = $joueur->getValueEncoded("idjoueurs");
                    				$nationalite = $joueur->getValueEncoded("personnesNationalite");
                    				$poste = explode("_",$joueur->getValueEncoded("joueursPoste"));
                                    $poste = implode(" ",$poste);
                    				$licence = $joueur->getValueEncoded("joueursLicence");
                    				$nomEquipe = $joueur->getValueEncoded("equipesName");

                    				?>
                    				<tr>
                    					<td><?php echo $i+1; ?></td>
                    					<td><?php echo $nomEquipe; ?></td>
                    					<td style="font-size:17px"><a style="display:block;min-height:80px" href="index.php?page=joueur&idjoueur=<?php echo $idJoueur; ?>"><?php echo $prenom; ?></a></td>
                    					<td style="font-size:17px"><a style="display:block;min-height:80px" href="index.php?page=joueur&idjoueur=<?php echo $idJoueur; ?>"><?php echo $nom; ?></a></td>
                    					<td><a style="display:block;min-height:80px" href="index.php?page=joueur&idjoueur=<?php echo $idJoueur; ?>"><i  style="font-size:17px;color:orange" ><?php echo $poste; ?></i></a></td>
                    					<td><a style="display:block;min-height:80px" href="index.php?page=joueur&idjoueur=<?php echo $idJoueur; ?>"><img  class="img-thumbnail"  width="100px" alt="Photo de <?php echo $nom; ?>" src="img/joueurs/<?php echo $img; ?>" /></a></td>
                    				</tr>
                    				<?php

                    			}


                            }

            			?>
                    </tbody>
            		</table>
                </div>

        </div>
        <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

    </div>
    <?php
}else{
    header("Location:../");
}



?>
