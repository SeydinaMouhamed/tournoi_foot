<?php
/**
 *
 */
 require_once ("DataObject.class.php");
class Arbitres extends DataObject{
  protected $data = array(
    "idarbitres" => "",
    "arbitresLicence" => "",
    "arbitresEmail" => "",
    "utilisateurs_idutilisateurs" => "",
    "utilisateursPhoto" => "",
    "utilisateursPseudo" => "",
    "utilisateursPassword" => "",
    "utilisateursEtat" => "",
    "personnes_idpersonnes" => "",
    "personnesNom" => "",
    "personnesPrenom" => "",
    "personnesSexe" => "",
    "personnesDDN" => "",
    "personnesLDN" => "",
    "personnesNationalite"=>""

  );
  public static function getArbitre($idArbitres){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_ARBITRES."
    INNER JOIN ".TB_UTILISATEURS." ON
      ".TB_UTILISATEURS.".idutilisateurs=".TB_ARBITRES.".utilisateurs_idutilisateurs
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_UTILISATEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    WHERE ".TB_ARBITRES.".idarbitres='{$idArbitres}'
    ")->fetch()){
      return new Arbitres($req);
    }
  }
  public static function getArbitres(){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_ARBITRES."
    INNER JOIN ".TB_UTILISATEURS." ON
      ".TB_UTILISATEURS.".idutilisateurs=".TB_ARBITRES.".utilisateurs_idutilisateurs
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_UTILISATEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    ")->fetchAll()){
        $arbitres = array();
        foreach ($req as $arbitre) {
            $arbitres[] =new Arbitres($arbitre);
        }
      return $arbitres;
    }
    return null;
  }

  public static function addArbitres($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email,$licence){
    $conn = parent::connect();
    $password = sha1($password);
    $req1 = $conn -> prepare("INSERT INTO personnes(personnesNom,personnesPrenom,personnesSexe,personnesDDN,personnesLDN) VALUES (:nom,:prenom,:sexe,:ddn,:ldn)");
    $req1 ->execute(array(
      'nom' => $nom,
      'prenom' => $prenom,
      'sexe' => $sexe,
      'ddn' => $ddn,
      'ldn' => $ldn,
    ));

    $idpersinsert = $conn -> lastInsertId();

    $req2 = $conn -> prepare("INSERT INTO utilisateurs(utilisateursPseudo,utilisateursPassword,utilisateursTypeDeCompte,utilisateursEtat,personnes_idpersonnes,utilisateursPhoto) VALUES (:pseudo,:password,'arbitres','1',:idpersonne,:profil)");
    $req2 ->execute(array(
      'pseudo' => $pseudo,
      'password' => $password,
      'idpersonne' => $idpersinsert,
      'profil' => $profil,
  ));

  $idutilinsert = $conn -> lastInsertId();

  $req3 = $conn ->prepare("INSERT INTO arbitres(arbitresLicence,utilisateurs_idutilisateurs,arbitresEmail) VALUES (:licence,:idutilisateur,:email)");
  $req3 ->execute(array(
    'licence' => $licence,
    'idutilisateur' => $idutilinsert,
    'email' => $email
   ));
  }

  public static function deleteArbitre($idArbitre){

    $conn = parent::connect();
    if ($conn) {
      $req = $conn ->query("DELETE FROM arbitres WHERE idarbitres ='{$idArbitre}'");
    }
  }


  public static function getMatchICanControlNow($userIdArbitre){
      $conn = parent::connect();
      if ($conn) {
         if($req = $conn ->query("SELECT idrencontres,rencontres_idrencontres,rencontresIdEquipe1,rencontresIdEquipe2,rencontresEtat,stades_idstades, TIMESTAMPDIFF(SECOND,".TB_RENCONTRES.".rencontresDate,NOW()) as difSec FROM ".TB_ARBITRES_RENCONTRES."
                                INNER JOIN ".TB_RENCONTRES." ON ".TB_ARBITRES_RENCONTRES.".rencontres_idrencontres=".TB_RENCONTRES.".idrencontres
                                INNER JOIN ".TB_ARBITRES." ON ".TB_ARBITRES.".idarbitres = ".TB_ARBITRES_RENCONTRES.".arbitres_idarbitres
                                WHERE ".TB_ARBITRES.".utilisateurs_idutilisateurs ='{$userIdArbitre}'
                                HAVING difSec>0 AND difSec<".NBR_SEC_OCCUPATION." AND ".TB_RENCONTRES.".rencontresEtat!='".ETAT_MATCH_TERMINE."'

         ")->fetch()){
             return $req;
         }
      }
      return null;
  }
  public static function updateArbitre($idArbitre){

        if (isset($_POST["submit2"])) {
          if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                  $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                  $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                  $_FILES["utilisateursPhoto"],$_POST["arbitresEmail"],$_POST["arbitresLicence"],
                  $_POST["idpersonne"],$_POST["idutilisateur"]
              )) {
                  $nom = $_POST["personnesNom"];
                  $prenom = $_POST["personnesPrenom"];
                  $sexe = $_POST["personnesSexe"];
                  $ddn = $_POST["personnesDDN"];
                  $ldn = $_POST["personnesLDN"];
                  $pseudo = $_POST["utilisateursPseudo"];
                  $password = sha1($_POST["utilisateursPassword"]);
                  $profil = $_FILES["utilisateursPhoto"]["name"];
                  $email = $_POST["arbitresEmail"];
                  $licence = $_POST["arbitresLicence"];
                  $idpersonne = $_POST["idpersonne"];
                  $idutilisateur = $_POST["idutilisateur"];

                   if (!empty($nom) && !empty($prenom) && !empty($sexe) && !empty($ddn)
                      && !empty($ldn) && !empty($pseudo) && !empty($password) && !empty($profil)
                      && !empty($email) && !empty($licence) && !empty($idpersonne) && !empty($idpersonne) ) {

                        $conn = parent::connect();
                        if ($conn) {
                          $req1 = $conn -> query("UPDATE personnes SET personnesNom='{$nom}', personnesPrenom='{$prenom}' , personnesSexe='{$sexe}' ,
                                    personnesDDN = '{$ddn}' , personnesLDN='{$ldn}' WHERE
                                    idpersonnes = '{$idpersonne}'");
                          $req2 = $conn -> query("UPDATE utilisateurs SET utilisateursPseudo='{$pseudo}' , utilisateursPassword='{$password}' ,
                                   utilisateursPhoto  = '{$profil}' WHERE idutilisateurs='{$idutilisateur}'");
                          $req3 = $conn -> query("UPDATE arbitres SET arbitresEmail='{$email}', arbitresLicence = '{$licence}'
                                    WHERE idarbitres = '{$idArbitre}'");
                        }

                   }else {
                       echo "Aucune valeur ne doit etre vide";


              }

        }
      }
    $conn = parent::connect();
    if ($conn) {
      $req = Arbitres::getArbitres($idArbitre);
      //var_dump($req);
      $nom = $req->getValue("personnesNom");
      $prenom = $req->getValue("personnesPrenom");
      $sexe = $req->getValue("personnesSexe");
      $ddn = $req->getValue("personnesDDN");
      $ldn = $req->getValue("personnesLDN");
      $pseudo = $req->getValue("utilisateursPseudo");
      $password = $req->getValue("utilisateursPassword");
      $profil = $req->getValue("utilisateursPhoto");
      $licence = $req->getValue("arbitresLicence");
      $email = $req->getValue("arbitresEmail");
      $idpersonne = $req->getValue("personnes_idpersonnes");
      $idutilisateur = $req->getValue("utilisateurs_idutilisateurs");

      ?>
      <form class="" action="#" method="post" enctype="multipart/form-data">

        <fieldset>
                <legend>Informations personnelles</legend>
                <table>
                    <tr>
                        <td>Nom</td>
                        <td> <input type="text" name="personnesNom" value="<?php echo "$nom"; ?>" required ></td>
                    </tr>
                    <tr>
                        <td>Prenom</td>
                        <td><input type="text" name="personnesPrenom" value="<?php echo "$prenom"; ?>" required></td>
                    </tr>
                    <tr>
                        <td>Sexe</td>
                        <td>M<input type="radio" name="personnesSexe" value="M" checked>
                         F<input type="radio" name="personnesSexe" value="F"></td>
                    </tr>
                    <tr>
                        <td>Date de naissance</td>
                        <td> <input type="date" name="personnesDDN" value="<?php echo "$ddn"; ?>" required> </td>
                    </tr>
                    <tr>
                        <td>Lieu de naissance</td>
                        <td> <input type="text" name="personnesLDN" value="<?php echo "$ldn"; ?>" required> </td>
                    </tr>
                </table>
            </fieldset>
            <br>
            <fieldset>
                    <legend>Informations Compte</legend>
                    <table>
                        <tr>
                            <td>Pseudo</td>
                            <td> <input type="text" name="utilisateursPseudo" value="<?php echo "$pseudo"; ?>" required> </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td> <input type="password" name="utilisateursPassword" value="" required> </td>
                        </tr>
                        <tr>
                            <td>Photo profil</td>
                            <td><input type="file" name="utilisateursPhoto" value="<?php echo "$profil"; ?>" required></td>
                        </tr>
                    </table>
            </fieldset>
            <br>
            <fieldset>
                <legend>Autres Informations</legend>
                <table>
                    <tr>
                        <td> Email </td>
                        <td> <input type="email" name="arbitresEmail" value="<?php echo "$email"; ?>" required> </td>
                    </tr>
                    <tr>
                        <td> Numero Licence</td>
                        <td> <input type="text" name="arbitresLicence" value="<?php echo "$licence"; ?>" required> </td>
                    </tr>
                </table>
            </fieldset>
              <table>
                <tr>
                  <td> <input type="hidden" name="idpersonne" value="<?php echo $idpersonne; ?> "> </td>
                  <td> <input type="hidden" name="idutilisateur" value="<?php echo $idutilisateur; ?>"> </td>
                </tr>
              </table>
            <br>
            <center>
                <tr>
                    <td> <input type="submit" name="submit2" value="Valider modifications"> </td>
                </tr>
            </center>


      </form>


      <?php

  }

}

}
?>
