<?php
require_once ("classes/Arbitres.class.php");

  if (isset($_POST["submit1"]) OR isset($_POST["submit2"])) {
    Arbitres::updateArbitre(1);

  }
  else {
    ?>

    <form class="" action="#" method="post">
      <input type="submit" name="submit1" value="Modifier Arbitre">
    </form>
    <?php
  }
 ?>
