<?php

  require_once("classes/DataObject.class.php");
  require_once("classes/Equipes.class.php");

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
              fieldset{
                  width: 100%;
              }
          </style>
          <?php
          getTopWeb();
          getMenuAdmin();
          ?>
      </header>
      <div style="min-height:500px"  class="container">
          <div class="col-md-12">
              
          </div>

 <br>
 <center> <h2>**************</h2> </center>
 <br>
 <form class="" action="#" method="post" enctype="multipart/form-data">
   <fieldset>
     <legend>Ajout Arbitre</legend>
         <fieldset>
             <legend>Informations personnelles</legend>
             <table>
                 <tr>
                     <td>Nom</td>
                     <td> <input type="text" name="personnesNom" value="" required ></td>
                 </tr>
                 <tr>
                     <td>Prenom</td>
                     <td><input type="text" name="personnesPrenom" value="" required></td>
                 </tr>
                 <tr>
                     <td>Sexe</td>
                     <td>M<input type="radio" name="personnesSexe" value="M" checked>
                      F<input type="radio" name="personnesSexe" value="F"></td>
                 </tr>
                 <tr>
                     <td>Date de naissance</td>
                     <td> <input type="date" name="personnesDDN" value="" required> </td>
                 </tr>
                 <tr>
                     <td>Lieu de naissance</td>
                     <td> <input type="text" name="personnesLDN" value="" required> </td>
                 </tr>
             </table>
         </fieldset>
         <br>
         <fieldset>
                 <legend>Informations Compte</legend>
                 <table>
                     <tr>
                         <td>Pseudo</td>
                         <td> <input type="text" name="utilisateursPseudo" value="" required> </td>
                     </tr>
                     <tr>
                         <td>Password</td>
                         <td> <input type="password" name="utilisateursPassword" value="" required> </td>
                     </tr>
                     <tr>
                         <td>Photo profil</td>
                         <td><input type="file" name="utilisateursPhoto" value="" required></td>
                     </tr>
                     <tr>
                         <td> Email </td>
                         <td> <input type="email" name="utilisateursEmail" value="" required> </td>
                     </tr>
                 </table>
         </fieldset>
         <br>
         <fieldset>
             <legend>Autres Informations</legend>
             <table>

                 <tr>
                     <td> Numero Licence</td>
                     <td> <input type="text" name="arbitresLicence" value="" required> </td>
                 </tr>
             </table>
         </fieldset>
         <br>
         <center>
             <tr>
                 <td> <input type="submit" name="submit" value="Enregistrer Informations"> </td>
             </tr>
         </center>
    </fieldset>
 </form>
  <br>
  <center> <h2>**************</h2> </center>
  <br>
  <form class="" action="#" method="post" enctype="multipart/form-data">
    <fieldset>
      <legend>Ajout Entraineur</legend>
          <fieldset>
              <legend>Informations personnelles</legend>
              <table>
                  <tr>
                      <td>Nom</td>
                      <td> <input type="text" name="personnesNom" value="" required ></td>
                  </tr>
                  <tr>
                      <td>Prenom</td>
                      <td><input type="text" name="personnesPrenom" value="" required></td>
                  </tr>
                  <tr>
                      <td>Sexe</td>
                      <td>M<input type="radio" name="personnesSexe" value="M" checked>
                       F<input type="radio" name="personnesSexe" value="F"></td>
                  </tr>
                  <tr>
                      <td>Date de naissance</td>
                      <td> <input type="date" name="personnesDDN" value="" required> </td>
                  </tr>
                  <tr>
                      <td>Lieu de naissance</td>
                      <td> <input type="text" name="personnesLDN" value="" required> </td>
                  </tr>
              </table>
          </fieldset>
          <br>
          <fieldset>
                  <legend>Informations Compte</legend>
                  <table>
                      <tr>
                          <td>Pseudo</td>
                          <td> <input type="text" name="utilisateursPseudo" value="" required> </td>
                      </tr>
                      <tr>
                          <td>Password</td>
                          <td> <input type="password" name="utilisateursPassword" value="" required> </td>
                      </tr>
                      <tr>
                          <td>Photo profil</td>
                          <td><input type="file" name="utilisateursPhoto" value="" required></td>
                      </tr>
                      <tr>
                          <td> Email </td>
                          <td> <input type="email" name="utilisateursEmail" value="" required> </td>
                      </tr>
                  </table>
          </fieldset>
          <br>
          <fieldset>
              <legend>Autres Informations</legend>
              <table>

                  <tr>
                      <td> Numero Licence</td>
                      <td> <input type="text" name="entraineursLicence" value="" required> </td>
                  </tr>
              </table>
          </fieldset>
          <br>
          <center>
              <tr>
                  <td> <input type="submit" name="submit10" value="Enregistrer Informations"> </td>
              </tr>
          </center>
        </fieldset>
  </form>
  <br>
  <center> <h2>**************</h2> </center>
  <br>
  <form class="" action="#" method="post" enctype="multipart/form-data">
      <fieldset>
        <legend>Ajout Reportaire</legend>
          <fieldset>
              <legend>Informations personnelles</legend>
              <table>
                  <tr>
                      <td>Nom</td>
                      <td> <input type="text" name="personnesNom" value="" required ></td>
                  </tr>
                  <tr>
                      <td>Prenom</td>
                      <td><input type="text" name="personnesPrenom" value="" required></td>
                  </tr>
                  <tr>
                      <td>Sexe</td>
                      <td>M<input type="radio" name="personnesSexe" value="M" checked>
                       F<input type="radio" name="personnesSexe" value="F"></td>
                  </tr>
                  <tr>
                      <td>Date de naissance</td>
                      <td> <input type="date" name="personnesDDN" value="" required> </td>
                  </tr>
                  <tr>
                      <td>Lieu de naissance</td>
                      <td> <input type="text" name="personnesLDN" value="" required> </td>
                  </tr>
              </table>
          </fieldset>
          <br>
          <fieldset>
                  <legend>Informations Compte</legend>
                  <table>
                      <tr>
                          <td>Pseudo</td>
                          <td> <input type="text" name="utilisateursPseudo" value="" required> </td>
                      </tr>
                      <tr>
                          <td>Password</td>
                          <td> <input type="password" name="utilisateursPassword" value="" required> </td>
                      </tr>
                      <tr>
                          <td>Photo profil</td>
                          <td><input type="file" name="utilisateursPhoto" value="" required></td>
                      </tr>
                      <tr>
                          <td> Email </td>
                          <td> <input type="email" name="utilisateursEmail" value="" required> </td>
                      </tr>
                  </table>
          </fieldset>
          <br>

          <center>
              <tr>
                  <td> <input type="submit" name="submit4" value="Enregistrer Informations"> </td>
              </tr>
          </center>
        </fieldset>
  </form>
  <br>
  <center> <h2>**************</h2> </center>
  <br>
  <form class="" action="#" method="post" enctype="multipart/form-data">
    <fieldset>
      <legend>Ajout Stade</legend>
      <fieldset>
         <legend>Informations</legend>
         <table>
               <tr>
                 <td>Nom</td>
                 <td> <input type="text" name="stadesName" value=""> </td>
               </tr>
               <tr>
                 <td>Image Stade</td>
                 <td> <input type="file" name="stadesImgIlust" value=""> </td>
               </tr>
               <tr>
                 <td>Adresse</td>
                 <td> <input type="text" name="stadesAdresse" value=""> </td>
               </tr>
               <tr>
                 <td>Dimensions</td>
                 <td> <input type="text" name="stadesDimensions" value=""> </td>
               </tr>

            </table>
         </fieldset>
         <center>

               <td> <input type="submit" name="submit14" value="Enregistrer informations"> </td>

         </center>
        </fieldset>
      </form>

      <?php
          require_once ("classes/Arbitres.class.php");

          if (isset($_POST["submit"])) {
              if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                  $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                  $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                  $_FILES["utilisateursPhoto"],$_POST["utilisateursEmail"],$_POST["arbitresLicence"]
              )) {
                  $nom = $_POST["personnesNom"];
                  $prenom = $_POST["personnesPrenom"];
                  $sexe = $_POST["personnesSexe"];
                  $ddn = $_POST["personnesDDN"];
                  $ldn = $_POST["personnesLDN"];
                  $pseudo = $_POST["utilisateursPseudo"];
                  $password = $_POST["utilisateursPassword"];
                  $profil = $_FILES["utilisateursPhoto"]["name"];
                  $email = $_POST["utilisateursEmail"];
                  $licence = $_POST["arbitresLicence"];

                   if (!empty($nom) && !empty($prenom) && !empty($sexe) && !empty($ddn)
                      && !empty($ldn) && !empty($pseudo) && !empty($password) && !empty($profil)
                      && !empty($email) && !empty($licence)) {
                          Arbitres::addArbitres($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email,$licence);
                          echo "reussie";

                   }else {
                       echo "Aucune valeur ne doit etre vide";

                   }
              }
              else {
                  header("Location:formarbitres.php");
              }
          }



       ?>
       <?php

           require_once ("classes/Joueurs.class.php");
           require_once ("classes/Equipes.class.php");
           require_once ("classes/DataObject.class.php");

           if (isset($_POST["submit15"])) {
               if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                           $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                           $_POST["personnesNationalite"],$_POST["joueursPied"],
                           $_POST["joueursPoids"],$_POST["joueursPoste"],$_POST["joueursTaille"],
                           $_POST["joueursLicence"],$_FILES["joueursPhotoProfil"],$_POST["equipes_idequipes"])) {


                   $joueursTaille = $_POST["joueursTaille"];
                   $joueursPied = $_POST["joueursPied"];
                   $joueursPoids = $_POST["joueursPoids"];
                   $joueursLicence = $_POST["joueursLicence"];
                   $joueursPoste = $_POST["joueursPoste"];
                   $joueursPhotoProfil = $_FILES["joueursPhotoProfil"]["name"];
                   $personnesNom = $_POST["personnesNom"];
                   $personnesPrenom = $_POST["personnesPrenom"];
                   $personnesSexe = $_POST["personnesSexe"];
                   $personnesDDN = $_POST["personnesDDN"];
                   $personnesLDN = $_POST["personnesLDN"];
                   $personnesNationalite = $_POST["personnesNationalite"];
                   $equipes_idequipes = $_POST["equipes_idequipes"];


                   if (!empty($joueursTaille) && !empty($joueursPied) && !empty($joueursPoids) && !empty($joueursLicence)
                         && !empty($joueursPoste) && !empty($joueursPhotoProfil) && !empty($personnesNom) && !empty($personnesPrenom)
                         && !empty($personnesSexe) && !empty($personnesDDN) && !empty($personnesLDN) && !empty($personnesNationalite)
                         && !empty($equipes_idequipes)) {

                             Joueurs::addJoueurs($joueursTaille,$joueursPied,$joueursPoids,$joueursLicence,$joueursPoste,$joueursPhotoProfil,$personnesNom,$personnesPrenom,$personnesSexe,$personnesDDN,$personnesLDN,$personnesNationalite,$equipes_idequipes);
                             echo "reussie";
                   }
                   else {
                       echo "assy";
                   }
               }
               else {
                   echo "maty";
               }
           }
           else {
               echo "string";
           }





        ?>
        <?php
            require_once ("classes/Entraineurs.class.php");

            if (isset($_POST["submit10"])) {
                if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                    $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                    $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                    $_FILES["utilisateursPhoto"],$_POST["utilisateursEmail"],$_POST["entraineursLicence"]
                )) {
                    $nom = $_POST["personnesNom"];
                    $prenom = $_POST["personnesPrenom"];
                    $sexe = $_POST["personnesSexe"];
                    $ddn = $_POST["personnesDDN"];
                    $ldn = $_POST["personnesLDN"];
                    $pseudo = $_POST["utilisateursPseudo"];
                    $password = $_POST["utilisateursPassword"];
                    $profil = $_FILES["utilisateursPhoto"]["name"];
                    $email = $_POST["utilisateursEmail"];
                    $licence = $_POST["entraineursLicence"];

                     if (!empty($nom) && !empty($prenom) && !empty($sexe) && !empty($ddn)
                        && !empty($ldn) && !empty($pseudo) && !empty($password) && !empty($profil)
                        && !empty($email) && !empty($licence)) {
                            Entraineurs::addEntraineurs($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email,$licence);
                            echo "reussie";

                     }else {
                         echo "Aucune valeur ne doit etre vide";

                     }
                }
                else {
                    header("Location:formentraineurs.php");
                }
            }



         ?>
         <?php
             require_once ("classes/Reportaires.class.php");

             if (isset($_POST["submit4"])) {
                 if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                     $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                     $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                     $_FILES["utilisateursPhoto"],$_POST["utilisateursEmail"]
                 )) {
                     $nom = $_POST["personnesNom"];
                     $prenom = $_POST["personnesPrenom"];
                     $sexe = $_POST["personnesSexe"];
                     $ddn = $_POST["personnesDDN"];
                     $ldn = $_POST["personnesLDN"];
                     $pseudo = $_POST["utilisateursPseudo"];
                     $password = $_POST["utilisateursPassword"];
                     $profil = $_FILES["utilisateursPhoto"]["name"];
                     $email = $_POST["utilisateursEmail"];

                      if (!empty($nom) && !empty($prenom) && !empty($sexe) && !empty($ddn)
                         && !empty($ldn) && !empty($pseudo) && !empty($password) && !empty($profil)
                         && !empty($email)) {
                             Reportaires::addReportaires($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email);
                             echo "reussie";

                      }else {
                          echo "Aucune valeur ne doit etre vide";

                      }
                 }
                 else {
                     header("Location:formreportaires.php");
                 }
             }



          ?>
          <?php

            require_once ("classes/Stades.class.php");

            if (isset($_POST["submit14"])) {

              if (isset($_POST["stadesName"],$_FILES["stadesImgIlust"],
                     $_POST["stadesAdresse"],$_POST["stadesDimensions"]
                 )) {
                     $stadesName = $_POST["stadesName"];
                     $stadesImgIlust = $_FILES["stadesImgIlust"]["name"];
                     $stadesAdresse = $_POST["stadesAdresse"];
                     $stadesDimensions = $_POST["stadesDimensions"];
                      if (!empty($stadesName) && !empty($stadesImgIlust) && !empty($stadesAdresse)
                          && !empty($stadesDimensions) ){
                            Stades::addStades($stadesName,$stadesImgIlust,$stadesAdresse,$stadesDimensions);
                            echo "reussie";
                           }

                      }else {
                          echo "Aucune valeur ne doit etre vide";


                 }

              }
                 else {
                   var_dump($_POST);
                    echo "defini";
                  }

              ?>
          </div>
          <?php } ?>
