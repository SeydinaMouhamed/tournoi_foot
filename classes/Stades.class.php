<?php

require_once ("DataObject.class.php");
class Stades extends DataObject{
 protected $data = array(
   "idstades" => "",
   "stadesName" => "",
   "stadesImgIlust" => "",
   "stadesAdresse" => "",
   "stadesDimensions" => "",
   "stadesNbrPlaces" => ""

 );

 public static function getStade($idStades)
 {

    $conn = parent::connect();
    $req = $conn -> query("SELECT * FROM ".TB_STADES." WHERE idstades='{$idStades}'") -> fetch();
    return new Stades ($req);

 }

 public static function getStades(){
    $conn = parent::connect();
    if($req = $conn -> query("SELECT * FROM ".TB_STADES) -> fetchAll()){
        $stades = array();
        foreach ($req as $stade){
            $stades[] = new Stades($stade);
        }
        return $stades;
    }
    return null;
 }

public static function addStades($stadesName,$stadesImgIlust,$stadesAdresse,$stadesDimensions){

   $conn = parent::connect();
   $req = $conn ->prepare("INSERT INTO stades(stadesName,stadesImgIlust,stadesAdresse,stadesDimensions)
                        VALUES (:stadesName,:stadesImgIlust,:stadesAdresse,:stadesDimensions) ");
   $req -> execute(array(
      "stadesName" => $stadesName,
      "stadesImgIlust" => $stadesImgIlust,
      "stadesAdresse" => $stadesAdresse,
      "stadesDimensions" => $stadesDimensions
   ));

}
public static function updateStades($idStades){

   $conn = parent::connect();
   $req = Stades::getStades($idStades);

   $stadesName  = $req -> getValue("stadesName");
   $stadesImgIlust = $req -> getValue("stadesImgIlust");
   $stadesAdresse = $req -> getValue("stadesAdresse");
   $stadesDimensions = $req -> getValue("stadesDimensions");
   var_dump($req);
   //$debut=explode("-",$debut);
   //$debut=ksort($debut);
   //var_dump($debut);
   //$debut=implode("/",$debut);




?>
<?php
if (isset($_POST["submit13"] )) {
   var_dump($_POST);
if (isset($_POST["stadesName"],$_FILES["stadesImgIlust"],
       $_POST["stadesAdresse"],$_POST["stadesDimensions"]
   )) {
       $stadesName = $_POST["stadesName"];
       $stadesImgIlust = $_POST["stadesImgIlust"]["name"];
       $stadesAdresse = $_POST["stadesAdresse"];
       $stadesDimensions = $_POST["stadesDimensions"];
        if (!empty($stadesName) && !empty($stadesImgIlust) && !empty($stadesAdresse)
            && !empty($stadesDimensions) ){

             $conn = parent::connect();
             if ($conn) {
               $req1 = $conn -> query("UPDATE stades SET stadesName='{$stadesName}', stadesImgIlust='{$stadesImgIlust}' , stadesAdresse='{$stadesAdresse}' ,
                         stadesDimensions = '{$stadesDimensions}'  WHERE
                         idtstades = '{$idStades}'");

             }

        }else {
            echo "Aucune valeur ne doit etre vide";


   }

}
   else {
      echo "defini";
   }

}


 ?>
   <form class="" action="#" method="post" enctype="multipart/form-data">

      <fieldset>
         <legend>Informations</legend>
            <table>
               <tr>
                 <td>Nom</td>
                 <td> <input type="text" name="stadesName" value="<?php echo $stadesName; ?>"> </td>
               </tr>
               <tr>
                 <td>Image Stade</td>
                 <td> <input type="file" name="stadesImgIlust" value="<?php echo $stadesImgIlust; ?>"> </td>
               </tr>
               <tr>
                 <td>Adresse</td>
                 <td> <input type="text" name="stadesAdresse" value="<?php echo $stadesAdresse; ?>"> </td>
               </tr>
               <tr>
                 <td>Dimensions</td>
                 <td> <input type="text" name="stadesDimensions" value="<?php echo $stadesDimensions; ?>"> </td>
               </tr>
               </table>
         </fieldset>

         <center>

               <td> <input type="submit" name="submit13" value="Valider modifications"> </td>

         </center>
      </form>


<?php

}
}
 ?>
