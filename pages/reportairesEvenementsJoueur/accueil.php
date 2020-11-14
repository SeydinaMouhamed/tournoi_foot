<?php
if(isset($_SESSION["compte"])){
    var_dump($_SESSION);
    //require_once("fonctions/admin.inc.php");
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

        </style>
        <?php
            getTopWeb(); //getMenuAdmin();
        ?>
        <script type="text/javascript">
            function changePosTo(posId,newPosId){
                var init = '<img style="width:80px;margin-top:5px;border-radius:100px" src="img/ballon.jpg" alt="">';
                var pos = document.getElementById(posId);
                var newPos = document.getElementById(newPosId);
                if(!pos.innerHTML){
                    pos.innerHTML=init;
                    newPos.innerHTML = "";
                }else{
                    pos.innerHTML="";
                    newPos.innerHTML = init;
                }
            }
        </script>
    </header>
    <div style="min-height:500px"  class="container">
        <div class="col-lg-12">
            <div onclick='changePosTo("posEquipe1","posEquipe2")'  style="background-color:red;height:200px" class="col-lg-6">
                <a style="display:block;width:100%;height:100%" href="index.php?equipePossessionId=1">
                    <center id="posEquipe1"></center>
                </a>
            </div>
            <div onclick='changePosTo("posEquipe2","posEquipe1")' style="background-color:blue;height:200px" class="col-lg-6">
                <a href="index.php?">
                    <center id="posEquipe2"></center>
                </a>

            </div>
        </div>
    </div>

<?php

} ?>
