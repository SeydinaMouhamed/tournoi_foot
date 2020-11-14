<?php
function getMenuReportaireArbitre(){
     ?>
     <div   class="col-md-12 container mainnav">

         <div class="navbar-header">
             <div id="search">
             <button type="button" class="close">×</button>
             <form>
                 <input type="search" value="" placeholder="Rechercher..." />
                 <button type="submit" class="btn btn-primary btn-lg">Search</button>
             </form>
             </div>
         </div>

         <nav class="navbar navbar-default" role="navigation">
             <span class="search-button visible-xs"><a href="#search"><i class="fa fa-search"></i></a></span>
             <button type="button" class="navbar-toggle collapsed" >
               <span class="sr-only">Toggle navigation</span>
               <i class="fa fa-bars"></i>
             </button>

             <div class="collapse navbar-collapse navbar-collapse">
                 <span class="search-button pull-right"><a href="#search"><i class="fa fa-search"></i></a></span>
                 <ul class="nav navbar-nav hidden-sm">
                     <li class="active"><a href="index.php?page=accueil"><?php tr(menuHome); ?></a></li>
                     <li><a href="pages/logOut.php?sesToLogOut=compte" data-toggle="modal" ><?php tr(menuLogOut); ?></a>
                     </li>
                 </ul>
             </div>
         </nav>
     </div>
     <?php
 }
 ?>
