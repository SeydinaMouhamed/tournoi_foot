<?php
/**
 *
 */
 require_once("DataObject.class.php");
class CommunDb extends DataObject{
    public function getConnection(){
        $conn = parent::connect();
        return $conn;
    }
    public static function getAllNationality(){
        $conn = CommunDb::getConnection();
        if($rep = $conn->query("SELECT DISTINCT personnesNationalite FROM ".TB_PERSONNES." ORDER BY personnesNationalite ASC")->fetchAll(PDO::FETCH_ASSOC)){
            foreach ($rep as $row) {
                $result[] = $row["personnesNationalite"];
            }
            return $result;
        }
        return null;
    }
    public static function query($req){
        $bdd = CommunDb::getConnection();
        if($query = $bdd->query($req)){
          return $query->fetchAll(PDO::FETCH_ASSOC);}
        return false;
    }
    public static function execute($req){
        $bdd = CommunDb::getConnection();
        if($query = $bdd->exec($req))
          return $query;
        return false;
    }

    public static function  registreToBdd($table,$tabRegisted){
        $bdd = CommunDb::getConnection();
      	$nbrChamp = count($tabRegisted);
      	$realValues = array();
      	$str_insert_column  = "(";
      	$str_values = " VALUES (";
      	$sep = " ";
      	for ($i = 0; $i < $nbrChamp ; $i++)
      	{
      		$str_insert_column .= $sep.trim($tabRegisted[$i][0]);
      		$str_values .= $sep.":valeur".$i;
      		$realValues[":valeur".$i] = $tabRegisted[$i][1];
      		$sep = ",";
      	}
      	$str_values .= " )";
      	$str_insert_column .= " )";

      	$req = $bdd->prepare("INSERT INTO ".$table." ".$str_insert_column.$str_values);

      	if($req->execute($realValues)){
      		return $bdd->lastInsertId();
      	}else{
      		return 0;
      	}
      }

      public static function getMatchData($table,$tabData,$champ="*",$operators=array(),$ordre="",$all=false,$op=" AND "){
        $bdd = CommunDb::getConnection();
        $str_req = "";
        $tempVal = array();
        $sep = '';
        for($i=0;$i< c_count($tabData);$i++) {
          if(c_count($tabData[$i]==2)){
            if($i+1 > c_count($operators)){
              $tempOp = "=";
            }else{
              if(isOperator($operators[$i])){
                $tempOp = $operators[$i];
              }else{
                 die("Operateur non pris en charge !!!");
              }
            }

            $str_req .= $sep.$tabData[$i][0]." ".$tempOp." :valeur$i ";
            $tempVal["valeur$i"] = $tabData[$i][1];
            $sep = $op;
          }else{
            die("Tableau incorrect: <br/>
              SYNTAXE : [[champ1,donnee1],[champ2,donnee2],...] !!!");
          }
        }
        //Execution de la requette
        $requete = $bdd->prepare("SELECT {$champ} FROM {$table} WHERE ".$str_req." ".$ordre);
        if($requete->execute($tempVal)){
          if($all)
            $Infos = $requete->fetchAll(PDO::FETCH_ASSOC);
          else
            $Infos = $requete->fetch(PDO::FETCH_ASSOC);
          if($Infos)
            return $Infos;
          return false;

        }
      }
      public static function getAllMatchData($table,$tabData,$champ="*",$operators=array(),$ordre="",$all=true,$op=" AND "){
        return CommunDb::getMatchData($table,$tabData,$champ,$operators,$ordre,$all,$op);
      }

      public static function verify($table,$tabData,$op=" AND ",$getQuery = false,$champs = "*"){
        if ($data = CommunDb::getMatchData($table,$tabData,$champs,array(),"",false,$op)) {
         if($getQuery){
           return $data;
         }else{
           return true;
         }
        }else{
         return false;
        }
      }

      public static function updateBd($table,$champs,$valeurs,$conditionChamp,$conditionValeur){
          $bdd = CommunDb::getConnection();
          $nbChamp = count($champs);
          $str_req = "";
          $arrayVal = array();
          for($i =0 ; $i < $nbChamp; $i++)
          {
              $tempVal = ":valeur".$i;
              $str_req .= $champs[$i]."=".$tempVal."".(($i+1 == $nbChamp)?" ":",");
              $arrayVal[$tempVal] = $valeurs[$i];
          }
          $tempCondition = ":conditionValeur1";
          $req = $bdd->prepare("UPDATE $table SET ".$str_req." WHERE ".$conditionChamp."=".$tempCondition."") ;
         	$arrayVal[$tempCondition] = $conditionValeur;

          $reqUp = $req->execute($arrayVal);
          $req->closeCursor();
          return $reqUp;
      }
      public static function updateBdMult($table,$champs,$valeurs,$conditionChamp,$conditionValeur){
          $bdd = CommunDb::getConnection();
          $nbChamp = count($champs);
          $str_req = "";
          $arrayVal = array();
          for($i =0 ; $i < $nbChamp; $i++)
          {
              $tempVal = ":valeur".$i;
              $str_req .= $champs[$i]."=".$tempVal."".(($i+1 == $nbChamp)?" ":",");
              $arrayVal[$tempVal] = $valeurs[$i];
          }
          $condition = "";
          $opt ="";
          for ($i=0; $i <count($conditionChamp) ; $i++) {
              $tempCondition = ":conditionValeur".$i;
              $arrayVal[$tempCondition]=$conditionValeur[$i];
              $condition.=$opt.$conditionChamp[$i]."=$tempCondition";
              $opt=" AND ";
          }
          $req = $bdd->prepare("UPDATE $table SET ".$str_req." WHERE ".$condition."") ;
          $reqUp = $req->execute($arrayVal);
          $req->closeCursor();
          return $reqUp;
      }


}


 ?>
