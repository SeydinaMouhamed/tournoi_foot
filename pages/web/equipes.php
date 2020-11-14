<?php
    require_once("classes/Equipes.class.php");
    if(isset($page)){
        getHeaderWeb();

        ?>
        <style media="screen">
            table{
                color:blue
            }
        </style>
        <br />
        <h4 style="text-align:center;border:1px solid #8EFF81;background-color:rgba(247, 249, 226, 0.9);border-radius:20px 20px 0px 0px;width:85%;box-shadow:0px 0px 10px 0px #8EFF81;color:red;margin:auto;padding:5px;color:">LISTE DES EQUIPES</h4>
        <br /><input class="form-control" style="width:300px;float:right;padding:10px;right:120px" id="myInput" type="text" placeholder="Search..">
        <hr />
        <div  style="background:url('img/logo-CAF.png') 0px 0px;background-size:100%;" class="container">


            <div   style="min-height:500px;background-color:rgba(247, 249, 226, 0.9);border-radius:30px"  class="">

            <?php
            if($equipes = Equipes::getEquipes()){
                ?>
                <table class="table  table-bordered table-striped" style="width:100%;box-shadow:0px 0px 30px 0px black">
                    <thead>

                        <tr>
                            <th>N°</th>
                            <th>Drapeau</th>
                            <th>Equipe</th>
                            <th>Embleme</th>
                        </tr>
                    </thead>
                    <tbody  id="myTable">
                <?php
                for ($i=0; $i < count($equipes) ; $i++) {

                    $idequipes = $equipes[$i]->getValueEncoded("idequipes");
                    $drapeau = $equipes[$i]->getValueEncoded("equipesDrapeau");
                    $embleme = $equipes[$i]->getValueEncoded("equipesEmbleme");
                    $nom = $equipes[$i]->getValueEncoded("equipesName");
                    ?>

                    <tr>
                        <td><?php echo $i+1; ?></td>
                        <td>
                            <label for="option<?php echo $i; ?>">
                                <?php
                                if($drapeau && file_exists(PATH_DRAPEAU.$drapeau)){
                                    ?>
                                    <img style="width:30px;height:30px;border:1px solid black" src="<?php echo PATH_DRAPEAU.$drapeau; ?>" alt="drapeau <?php echo $nom; ?>" title="drapeau <?php echo $nom; ?>" >
                                    <?php
                                }
                                ?>
                            </label>
                        </td>
                        <td>

                                <a href="index.php?page=equipeJoueurs&equipeId=<?php echo $idequipes; ?>" ><b><?php echo $nom ?></b></a>

                        </td>
                        <td>
                            <?php
                            if($embleme && file_exists(PATH_EMBLEME.$embleme)){
                                ?>
                                <label for="option<?php echo $i; ?>">
                                    <img style="width:30px;height:30px;border:1px solid black;border-radius:30px;"  src="<?php echo PATH_EMBLEME.$embleme; ?>" alt="embleme <?php echo $nom; ?>"  title="embleme <?php echo $nom; ?>" >
                                </label>
                                    <?php
                            }
                            ?>
                        </td>
                    </tr>
                    <?php
                } ?>
                </tbody>
            </table>
                <?php
            }
            ?>
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
        </div>
        <?php
    }else{
        header("Location:../");
    }
?>
