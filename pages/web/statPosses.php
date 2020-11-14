
<?php
    if(isset($page)){
        getHeaderWeb();
        //Code contenu accueil
        ?>
        <div style="min-height:500px" class="container">
            <table class="table">
                <tr>
                    <th>Équipe</th>
                    <th>Possess du ballon</th>
                    <th>Possess du ballon (min) </th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <?php
    }else{
        header("Location:../");
    }
?>
