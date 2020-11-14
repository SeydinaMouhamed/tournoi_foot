<?php
    if(isset($page)){
        getHeaderWeb();
        getSlider();
        //Code contenu accueil
        ?>
        <div class="container">
            <?php
            showLastMatch();
            showNews();

            ?>
        </div>
        <?php
    }else{
        header("Location:../");
    }
?>
