<?php
/**
 *
 */
 require_once ("DataObject.class.php");
class Reportaires extends DataObject{
  protected $data = array(
    "utilisateursEmail" => "",
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

  );
  public static function getReportaires($idUtilisateurs){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_UTILISATEURS."
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_UTILISATEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    WHERE ".TB_UTILISATEURS.".idutilisateurs='{$idUtilisateurs}'
    ")->fetch()){
      return new Reportaires($req);
    }
  }

  public static function addReportaires($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email){
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

    $req2 = $conn -> prepare("INSERT INTO utilisateurs(utilisateursPseudo,utilisateursPassword,utilisateursTypeDeCompte,utilisateursEtat,personnes_idpersonnes,utilisateursPhoto,utilisateursEmail) VALUES (:pseudo,:password,'reportaires','1',:idpersonne,:profil,:email)");
    $req2 ->execute(array(
      'pseudo' => $pseudo,
      'password' => $password,
      'idpersonne' => $idpersinsert,
      'profil' => $profil,
      'email' => $email,
  ));

  }

  public static function deleteReportaire($idUtilisateurs){

    $conn = parent::connect();
    if ($conn) {
      $req = $conn ->query("DELETE FROM reportaires WHERE idUtilisateurs ='{$idUtilisateurs}'");
    }
  }
  public static function updateReportaire($idUtilisateurs){

    $conn = parent::connect();
    if ($conn) {
      $req = Reportaires::getReportaires($idUtilisateurs);
      //var_dump($req);
      $nom = $req->getValue("personnesNom");
      $prenom = $req->getValue("personnesPrenom");
      $sexe = $req->getValue("personnesSexe");
      $ddn = $req->getValue("personnesDDN");
      $ldn = $req->getValue("personnesLDN");
      $pseudo = $req->getValue("utilisateursPseudo");
      $password = $req->getValue("utilisateursPassword");
      $profil = $req->getValue("utilisateursPhoto");
      $email = $req->getValue("utilisateursEmail");
      $idpersonne = $req->getValue("personnes_idpersonnes");
      var_dump($req);
      ?>
      <?php

      if (isset($_POST["submit5"] )) {
        if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                $_FILES["utilisateursPhoto"],$_POST["utilisateursEmail"],
                $_POST["idpersonne"]
            )) {
                $nom = $_POST["personnesNom"];
                $prenom = $_POST["personnesPrenom"];
                $sexe = $_POST["personnesSexe"];
                $ddn = $_POST["personnesDDN"];
                $ldn = $_POST["personnesLDN"];
                $pseudo = $_POST["utilisateursPseudo"];
                $password = sha1($_POST["utilisateursPassword"]);
                $profil = $_FILES["utilisateursPhoto"]["name"];
                $email = $_POST["utilisateursEmail"];
                $idpersonne = $_POST["idpersonne"];

                 if (!empty($nom) && !empty($prenom) && !empty($sexe) && !empty($ddn)
                    && !empty($ldn) && !empty($pseudo) && !empty($password) && !empty($profil)
                    && !empty($email) && !empty($idpersonne) ) {

                      $conn = parent::connect();
                      if ($conn) {
                        $req1 = $conn -> query("UPDATE personnes SET personnesNom='{$nom}', personnesPrenom='{$prenom}' , personnesSexe='{$sexe}' ,
                                  personnesDDN = '{$ddn}' , personnesLDN='{$ldn}' WHERE
                                  idpersonnes = '{$idpersonne}'");
                        $req2 = $conn -> query("UPDATE utilisateurs SET utilisateursPseudo='{$pseudo}' , utilisateursPassword='{$password}' ,
                                 utilisateursPhoto  = '{$profil}', utilisateursEmail='{$email}'  WHERE idutilisateurs='{$idUtilisateurs}'");
                      }

                 }else {
                     echo "Aucune valeur ne doit etre vide";


            }

      }
    }
  }



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
                        <tr>
                            <td> Email </td>
                            <td> <input type="email" name="utilisateursEmail" value="<?php echo "$email"; ?>" required> </td>
                        </tr>
                    </table>
            </fieldset>
              <table>
                <tr>
                  <td> <input type="hidden" name="idpersonne" value="<?php echo $idpersonne; ?> "> </td>
                </tr>
              </table>
            <br>
            <center>
                <tr>
                    <td> <input type="submit" name="submit5" value="Valider modifications"> </td>
                </tr>
            </center>


      </form>



<?php
}

}
 ?>
