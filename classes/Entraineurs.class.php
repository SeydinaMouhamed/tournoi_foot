<?php
/**
 *
 */
 require_once ("DataObject.class.php");
class Entraineurs extends DataObject{
  protected $data = array(
    "identraineurs" => "",
    "entraineursLicence" => "",
    "utilisateursEmail" => "",
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
    "equipes_idequipes"=>""
  );
  public static function getEntraineur($idEntraineur){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_ENTRAINEURS."
    INNER JOIN ".TB_UTILISATEURS." ON
      ".TB_UTILISATEURS.".idutilisateurs=".TB_ENTRAINEURS.".utilisateurs_idutilisateurs
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_UTILISATEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    WHERE ".TB_ENTRAINEURS.".identraineurs='{$idEntraineur}'
    ")->fetch()){
      return new Entraineurs($req);
    }
  }
  public static function getEntraineurs(){
    $conn = parent::connect();
    if($req = $conn->query("SELECT * FROM ".TB_ENTRAINEURS."
    INNER JOIN ".TB_UTILISATEURS." ON
      ".TB_UTILISATEURS.".idutilisateurs=".TB_ENTRAINEURS.".utilisateurs_idutilisateurs
    INNER JOIN ".TB_PERSONNES." ON
      ".TB_UTILISATEURS.".personnes_idpersonnes=".TB_PERSONNES.".idpersonnes
    ")->fetchAll()){

        $entraineurs = array();
        foreach ($req as $entraineur) {
           $entraineurs[] =  new Entraineurs($entraineur);
        }
      return $entraineurs;
    }
    return null;
  }

  public static function addEntraineurs($nom,$prenom,$sexe,$ddn,$ldn,$pseudo,$password,$profil,$email,$licence){
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

    $req2 = $conn -> prepare("INSERT INTO utilisateurs(utilisateursPseudo,utilisateursPassword,utilisateursTypeDeCompte,utilisateursEtat,personnes_idpersonnes,utilisateursPhoto,utilisateursEmail) VALUES (:pseudo,:password,'entraineurs','1',:idpersonne,:profil,:email)");
    $req2 ->execute(array(
      'pseudo' => $pseudo,
      'password' => $password,
      'idpersonne' => $idpersinsert,
      'profil' => $profil,
      'email' => $email
  ));

  $idutilinsert = $conn -> lastInsertId();

  $req3 = $conn ->prepare("INSERT INTO entraineurs(entraineursLicence,utilisateurs_idutilisateurs) VALUES (:licence,:idutilisateur)");
  $req3 ->execute(array(
    'licence' => $licence,
    'idutilisateur' => $idutilinsert
   ));
  }

  public static function deleteArbitre($idEntraineur){

    $conn = parent::connect();
    if ($conn) {
      $req = $conn ->query("DELETE FROM entraineurs WHERE identraineurs ='{$idEntraineur}'");
    }
  }
  public static function updateEntraineurs($idEntraineur){

    $conn = parent::connect();
    if ($conn) {
      $req = Entraineurs::getEntraineurs($idEntraineur);
      //var_dump($req);
      $nom = $req->getValueEncoded("personnesNom");
      $prenom = $req->getValueEncoded("personnesPrenom");
      $sexe = $req->getValueEncoded("personnesSexe");
      $ddn = $req->getValueEncoded("personnesDDN");
      $ldn = $req->getValueEncoded("personnesLDN");
      $pseudo = $req->getValueEncoded("utilisateursPseudo");
      $password = $req->getValueEncoded("utilisateursPassword");
      $profil = $req->getValueEncoded("utilisateursPhoto");
      $licence = $req->getValueEncoded("entraineursLicence");
      $email = $req->getValueEncoded("utilisateursEmail");
      $idpersonne = $req->getValueEncoded("personnes_idpersonnes");
      $idutilisateur = $req->getValueEncoded("utilisateurs_idutilisateurs");

      ?>
      <?php

      if (isset($_POST["submit12"] )) {
        if (isset($_POST["personnesNom"],$_POST["personnesPrenom"],
                $_POST["personnesSexe"],$_POST["personnesDDN"],$_POST["personnesLDN"],
                $_POST["utilisateursPseudo"],$_POST["utilisateursPassword"],
                $_FILES["utilisateursPhoto"],$_POST["utilisateursEmail"],$_POST["entraineursLicence"],
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
                $email = $_POST["utilisateursEmail"];
                $licence = $_POST["entraineursLicence"];
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
                        $req2 = $conn -> query("UPDATE utilisateurs SET utilisateursPseudo='{$pseudo}' , utilisateursEmail='{$email}', utilisateursPassword='{$password}' ,
                                 utilisateursPhoto  = '{$profil}' WHERE idutilisateurs='{$idutilisateur}'");
                        $req3 = $conn -> query("UPDATE entraineurs SET  entraineursLicence = '{$licence}'
                                  WHERE identraineurs = '{$idEntraineur}'");
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
            <br>
            <fieldset>
                <legend>Autres Informations</legend>
                <table>

                    <tr>
                        <td> Numero Licence</td>
                        <td> <input type="text" name="entraineursLicence" value="<?php echo "$licence"; ?>" required> </td>
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
                    <td> <input type="submit" name="submit12" value="Valider modifications"> </td>
                </tr>
            </center>


      </form>



<?php
}

}
 ?>
