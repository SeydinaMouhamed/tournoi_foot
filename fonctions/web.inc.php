<?php
    function getTopWeb(){
        global $page;
        global $section;
        ?>
        <nav style="margin-top:-40px" class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12">
                        <div class="call-to-action">
                            <ul class="list-inline">
                                <li>
                                    <a href="#">
                                        <strong>
                                            <?php
                                            if(defined('CAF_NUMBER')){
                                                echo CAF_NUMBER;
                                            }
                                             ?>
                                         </strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <strong>
                                            <?php
                                            if(defined('CAF_EMAIL')){
                                                echo CAF_EMAIL;
                                            }
                                             ?>
                                         </strong>
                                     </a>
                                 </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-4 col-xs-12">
                        <div class="logo text-center">
                            <h1><a href="#aboutCAF" data-toggle="modal" ><img style="width:50px" src="img/logo-CAF.png" alt="Logo CAF"></a><span>CAF</span></h1>
                        </div>
                    </div>

                    <div class="col-sm-4 hidden-xs">
                        <div class="topbar-right">
                            <div class="lang-support pull-right">
                                <?php
                                if($_SESSION["lang"]=="fr"){
                                    $otherLang="en";
                                    $alt = "Active english mode";
                                }else{
                                    $otherLang="fr";
                                    $alt = "Activer le mode français";
                                }  ?>

                                <a title="<?php echo $alt; ?>"  href="changeLang.php?newLang=<?php echo $otherLang; ?>&page=<?php echo $page."&s=".$section; ?>"><img width="20px" src="img/<?php echo $otherLang; ?>.ico" /></a>
                            </div>

                            <ul class="social-links list-inline pull-right">
                                <?php
                                if(isset($_SESSION["pseudo"])){ ?>
                                    <li style="color:blue">
                                        <?php tr(userHello); echo " ".$_SESSION["pseudo"]; ?>
                                    </li>
                                    <?php
                                    if($section!=PATH_WEB){
                                        ?>
                                        <li><a href="index.php?v=web"><i class="fa fa-globe"></i></a></li>
                                        <?php
                                    }else{
                                        ?>
                                        <li><a href="index.php"><i class="fa fa-user"></i></a></li>
                                        <?php
                                    }

                                } ?>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <?php
    }

    function getMenuWeb(){
        global $page;
        ?>
        <div  style="margin-top:-50px" class="col-md-12 container mainnav">

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
                        <li <?php if($page=="accueil"){ echo "class='active'"; }  ?> ><a href="index.php?page=accueil"><?php tr(menuHome); ?></a></li>
                        <li><a href="#"><?php tr(menuMatch); ?></a></li>
                        <?php /*
                        <li class="dropdown"><a href="#">Blog <b class="caret"></b></a>
                            <div class="submenu-wrapper submenu-wrapper-topbottom">
                                <div class="submenu-inner  submenu-inner-topbottom">
                                    <ul class="dropdown-menu">
                                        <li><a href="blog.html">Blog standard</a></li>
                                        <li><a href="blog-single.html">Single blog</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li><a href="typography.html">Typography</a></li> */ ?>
                        <li <?php if($page=="equipes"){ echo "class='active'"; }  ?> ><a href="index.php?page=equipes"><?php tr(menuTeams); ?></a></li>
                        <li <?php if($page=="joueurs"){ echo "class='active'"; }  ?> ><a href="index.php?page=joueurs"><?php tr(menuPlayers); ?></a></li>
                        <li <?php if($page=="stades"){ echo "class='active'"; }  ?> ><a href="index.php?page=stades"><?php tr(menuStadiums); ?></a></li>
                        <li class="dropdown"><a href="#"><?php tr(menuStatistics); ?> <b class="caret"></b></a>
                            <div class="submenu-wrapper submenu-wrapper-topbottom">
                                <div class="submenu-inner  submenu-inner-topbottom">
                                    <ul class="dropdown-menu">
                                        <li><a href="#"><?php tr(menuOverview); ?></a></li>
                                        <li><a href="#"><?php tr(menuGoals); ?></a></li>
                                        <li><a href="#"><?php tr(menuGoalType); ?></a></li>
                                        <li><a href="#"><?php tr(menuShots); ?></a></li>
                                        <li><a href="index.php?page=statPosses"><?php tr(menuTick); ?></a></li>
                                        <li><a href="#"><?php tr(menuAttack); ?></a></li>
                                        <li><a href="#"><?php tr(menuDiscipline); ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li <?php if($page=="planning"){ echo "class='active'"; }  ?> class="dropdown" ><a href="index.php?page=planning">Planing  <b class="caret"></b></a>
                            <div class="submenu-wrapper submenu-wrapper-topbottom">
                                <div class="submenu-inner  submenu-inner-topbottom">
                                    <ul class="dropdown-menu">
                                        <?php
                                        if($tournois = Tournois::getTournois()){
                                            for ($i=0; $i <c_count($tournois) ; $i++) {
                                                $tournoiId = $tournois[$i]->getValueEncoded("idtournois");
                                                $tournoiName = $tournois[$i]->getValueEncoded("tournoisName");
                                                ?><li><a href="index.php?page=planing&idTournoi=<?php echo $tournoiId; ?>" ><?php echo $tournoiName;  ?></a></li><?php

                                            }
                                        }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <?php
                            if(isset($_SESSION["compte"])){
                                $linkToPrint = "pages/logOut.php";
                            }else{
                                $linkToPrint = "#login";
                            }
                             ?>
                            <a href="<?php echo $linkToPrint; ?>" data-toggle="modal" ><?php
                            if(isset($_SESSION["compte"])){
                                tr(menuLogOut);
                            }else{
                                tr(menuLogin);
                            }

                          ?></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <?php
    }

    function getHeaderWeb(){
        ?>
        <header class="header">
            <?php
            getTopWeb();
            getMenuWeb();
            ?>
        </header>
        <?php
    }

    function getSlider(){
        ?>
        <div id="main-carousel" class="carousel slide hero-slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <?php
                $j=0;
                if($tournois = Tournois::getTournois()){
                    for ($j=0; $j < c_count($tournois); $j++) {
                        ?>
                        <li data-target="#main-carousel" data-slide-to="<?php echo $j; ?>" <?php if($j==0){ echo "class='active'"; } ?> ></li>
                        <?php
                    }
                    $j++;
                } ?>
            </ol>
            <div class="carousel-inner" role="listbox">
                <?php
                if($tournois){
                    for ($i=0; $i < c_count($tournois); $i++) {
                        $idTournoi = $tournois[$i]->getValueEncoded("idtournois");
                        $img = $tournois[$i]->getValueEncoded("tournoisImgPub");
                        $titre = $tournois[$i]->getValueEncoded("tournoisName");
                        $apropos = $tournois[$i]->getValueEncoded("tournoisApropos");
                        ?>
                        <div class="item <?php if($i==0){echo "active"; } ?>">
                            <img style="width:100%;height:543px" src="<?php echo PATH_PUB_TOURNOI.$img; ?>" alt="Hero Slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1 style="color:blue" class="animated lightSpeedIn">
                                        <?php echo $titre; ?>
                                    </h1>
                                    <p style="background-color:rgba(0,0,0,0.5);padding:15px;" class="lead animated lightSpeedIn">
                                        <?php echo $apropos; ?>
                                    </p>
                                    <a class="btn btn-primary btn-lg animated lightSpeedIn" href="index.php?page=aboutTournoi&idTournoi=<?php echo $idTournoi; ?>">VOIR PLUS</a>
                                </div>
                            </div>
                        </div>
                        <?php
                    }

                }else{
                    ?>
                    <div class="item">
                        <img src="img/slider/slide-2.jpg" alt="Hero Slide">
                        <!--Slide Image-->

                        <div class="container">
                            <div class="carousel-caption">

                                <h1 class="animated bounceIn">Title of Your Product <br>Service or Event</h1>

                                <p class="lead animated bounceIn">It's a tag line, where you can write a key point of your idea. It
                                    is a long
                                    established fact that a reader will be distracted.</p>
                                <a class="btn btn-primary btn-lg animated bounceIn" href="#">WORK WITH US TODAY</a>
                            </div>
                            <!--.carousel-caption-->
                        </div>
                        <!--.container-->
                    </div>
                    <?php
                }
                ?>
                <!--.item-->
            </div>
            <!--.carousel-inner-->

            <!-- Controls -->
            <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
                <span class="sr-only">previous</span>
            </a>
            <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
                <span class="sr-only">next</span>
            </a>
        </div>

        <?php
    }

    function getFooterMap(){
        ?>
        <!-- footer-widget-section start -->
        <section class="footer-widget-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="footer-widget">
                            <h3>About</h3>
                            <p>
                                Credibly build virtual materials for fully researched paradigms. Authoritatively plagiarize long-term high-impact infomediaries.
                            </p>
                            <br>

                            <address>
                              <strong>(554) 616 9926</strong>
                              <br>
                              <a href="#">example@yahoo.com</a>
                              <br>
                              <br>
                              <span class="map-marker">384 Maple Circle<br>Simi Valley Nevada, 24757</span>
                            </address>


                        </div><!-- /.footer-widget -->
                    </div><!-- /.col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="footer-widget">
                            <h3>Useful Links</h3>
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="quick-links">
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="#">Career</a></li>
                                        <li><a href="#">Staffs</a></li>
                                        <li><a href="#">News</a></li>
                                        <li><a href="#">Support</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="quick-links">
                                        <li><a href="#">Forum</a></li>
                                        <li><a href="#">Schedules</a></li>
                                        <li><a href="#">Projects</a></li>
                                        <li><a href="#">Partners</a></li>
                                        <li><a href="#">Cargo</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- /.footer-widget -->
                    </div><!-- /.col-md-4 -->

                    <div class="col-sm-4">
                        <div class="footer-widget">
                            <h3>Stay in Touch</h3>
                            <p>Enter your email address to receive news &amp; offers from us</p>

                            <form class="newsletter-form">
                                <div class="form-group">
                                    <label class="sr-only" for="InputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="InputEmail1" placeholder="Your email address">
                                    <button type="submit" class="btn">Send &nbsp;<i class="fa fa-angle-right"></i></button>
                                </div>
                            </form>
                            <ul class="social-links list-inline">
                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div><!-- /.footer-widget -->
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.cta-section -->
        <!-- footer-widget-section end -->
        <?php
    }

    function trashTemplate(){
    ?>
    <!-- #main-carousel-->


    <!-- services start -->
    <section class="service-wrap">

        <!-- Controls will work for desktop and large devices -->
        <div class="slider-control hidden-sm hidden-xs">
            <a class="left carousel-control" href="#service-carousel" role="button" data-slide="prev">
                <span class="flaticon-previous11" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#service-carousel" role="button" data-slide="next">
                <span class="flaticon-next15" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!--/.slider-control -->

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="service-left-box">
                        <div class="section-heading">
                          <h2 class="section-title">Our 24 Hour’s Services</h2>
                          <span class="section-sub">Progressively architect prospective</span>
                        </div> <!--section-header-->

                        <div class="service-intro">
                             <p>This is Margueritte McAllister, headmistress of the Spencer School for Girls in Wildwood, New Jersey. Is Mr. or Mrs. Lando home? Yes, this is she. Mrs. Lando, when your husband enrolled Mathilda at Spencer, he told us she had "problems". Well, as you know, we pride ourselves on turning troubled girls into healthy, productive young women. But if they are not here, there is very little we can do. Now, Mathilda left school without permission nearly two weeks ago.</p>
                        </div><!--/.service-intro-->
                    </div><!-- /.service-left-box -->
               </div><!-- /.col -->
               <div class="col-md-8 col-sm-12">
                    <div id="service-carousel" class="carousel slide">
                        <!-- Controls
                        will work for small devices -->

                        <div class="slider-control visible-sm visible-xs">
                            <a class="left carousel-control" href="#service-carousel" role="button" data-slide="prev">
                                <span class="flaticon-previous11" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#service-carousel" role="button" data-slide="next">
                                <span class="flaticon-next15" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div><!--/.slider-control -->

                      <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="service-content">
                                            <h3>Marine<br><span>unshipation</span></h3>
                                            <div class="service-thumb">
                                                <img class="img-responsive" src="img/service1.png" alt="image"/>
                                            </div>
                                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                                            <a class="btn btn-primary" href="#">Continue reading<i class="fa fa-long-arrow-right"></i></a>
                                        </div><!-- /.service-content -->
                                    </div><!--/.col -->
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="service-content">
                                            <h3>Air<br><span>transportation</span></h3>
                                            <div class="service-thumb">
                                                <img class="img-responsive" src="img/service2.png" alt="image"/>
                                            </div>
                                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                                            <a class="btn btn-primary" href="#">Continue reading<i class="fa fa-long-arrow-right"></i></a>
                                        </div><!-- /.service-content -->
                                    </div><!--/.col-->
                                </div>
                            </div><!--/.item -->
                            <div class="item">
                                <div class="row">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="service-content">
                                            <h3>Quick<br><span>service</span></h3>
                                            <div class="service-thumb">
                                                <img class="img-responsive" src="img/service1.png" alt="image"/>
                                            </div>
                                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                                            <a class="btn btn-primary" href="#">Continue reading<i class="fa fa-long-arrow-right"></i></a>
                                        </div><!-- /.service-content -->
                                    </div><!--/.col-->
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="service-content">
                                            <h3>Worldwide<br><span>shipments</span></h3>
                                            <div class="service-thumb">
                                                <img class="img-responsive" src="img/service2.png" alt="image"/>
                                            </div>
                                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                                            <a class="btn btn-primary" href="#">Continue reading<i class="fa fa-long-arrow-right"></i></a>
                                        </div><!-- /.service-content -->
                                    </div><!--/.col-->
                                </div><!--/.row-->
                            </div><!--/.item-->

                        </div>
                    </div><!-- /.carousel -->
               </div><!--/.col-->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section>
    <!-- services end -->

    <!-- About-us-wrap -->
    <section class="about-us-wrap section-padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="about-us-content">
                        <h3>Who we are</h3>
                        <div class="about-content-block">
                            <span>Distinctively Orchestrate Standardized</span>
                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                        </div>
                        <br>
                        <div class="about-content-block">
                            <span>Synergistically extend open source</span>
                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                        </div>
                    </div><!-- /about-us-content -->
                </div><!--/.col-->

                <div class="col-sm-4 col-xs-12">
                    <div class="about-us-content">
                        <h3>What we do</h3>
                        <div class="about-content-block">
                            <span>Distinctively Orchestrate Standardized</span>
                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.Professionally productize user strategic theme areas.</p>
                        </div>
                        <br>
                        <div class="about-content-block">
                            <span>Synergistically extend open source e-business.</span>
                            <p>Progressively architect prospective imperatives through competitive communities. Professionally productize user strategic theme areas.</p>
                        </div>
                    </div><!-- /about-us-content -->
                </div><!-- /.col-->

                <div class="col-sm-4 col-xs-12">
                    <div class="about-us-content capabilities">
                        <div class="about-content-block">
                            <h3>Our Capabilities</h3>
                            <ul>
                                <li>Airport service</li>
                                <li>24 hours service in 7 days a week</li>
                                <li>Priority delivery service</li>
                                <li>Senior discounts</li>
                                <li>Corporate accounts available</li>
                            </ul>
                        </div>

                    </div><!-- /about-us-content -->
                </div><!--/.col-->
            </div><!-- /.row -->
        </div><!-- /.container -->

    </section>
    <!-- /About-us-wrap -->

    <!-- featuer-wrap start -->
    <section class="feature-wrap section-padding"
        data-stellar-background-ratio="0.5">

        <div class="container center">
            <div class="row">
                <div class="col-xs-12">
                    <div class="feature-content" >
                        <h2>Providing cost-effective<br><span>And reliable marine and air unshipations
                            </span>
                        </h2>
                        <div>
                            <p>Etiam non augue in tortor facilisis porttitor at sit amet justo. Sed blandit tempor hendrerit. Suspendisse quis tincidunt nisl. Nulla bibendum purus elit, ut hendrerit orci porttitor id. Donec egestas dapibus massa, et tempor nulla ultricies quis. Donec mattis, metus vel pharetra pulvinar, nunc leo consectetur purus, sit amet tincidunt dui lorem ac elit. Vivamus nulla nisl, sodales eu rutrum sit amet, viverra eu eros. Proin sollicitudin congue augue, eget condimentum purus dictum sit amet. Aenean et tempor augue.</p>
                        </div>
                        <a data-toggle="modal" data-target="#quoteModal" href="#" class="btn btn-primary quote-btn btn-lg">Get a Quote <i class="fa fa-long-arrow-right"></i></a>

                        <!-- Modal -->
                        <div class="modal fade" id="quoteModal"			tabindex="-1" role="dialog"
                            aria-labelledby="quoteModalLabel" aria-hidden="true">

                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h3 class="modal-title" id="quoteModalLabel">Request a rate for the shipping of your goods.</h3>
                                    </div>

                                    <div class="modal-body">
                                        <form id="contactForm" action="sendemail.php" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="name">Name</label>
                                                    <input id="name" name="name" type="text" class="form-control"  required="" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label for="company">Company Name</label>
                                                <input id="company" name="company" type="text" class="form-control" placeholder="">
                                              </div>
                                            </div>
                                        </div><!--/.row-->

                                        <div class="row">
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label for="phone">Phone Number</label>
                                                <input id="phone" name="phone" type="text" class="form-control" placeholder="">
                                              </div>
                                            </div>
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label for="email">Email address</label>
                                                <input id="email" name="email" type="email" class="form-control" required="" placeholder="">
                                              </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label for="city">City Name</label>
                                                <input id="city" name="city" type="text" class="form-control" placeholder="">
                                              </div>
                                            </div>
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label for="subject">Subject</label>
                                                <input id="subject" name="subject" type="text" class="form-control" required="" placeholder="">
                                              </div>
                                            </div>
                                        </div>
                                        <div class="form-group text-area">
                                            <label for="message">Your Message</label>
                                            <textarea id="message" name="message" class="form-control" rows="6" required="" placeholder=""></textarea>
                                        </div>

                                        <button type="submit" class="btn btn-primary btn-lg">Send Message</button>
                                    </form>
                                  </div>
                                </div><!--/.modal-content-->
                            </div><!--/.modal-dialog-->
                        </div><!-- Modal END -->

                    </div><!--/.feature-content-->
                </div><!--/.col-->

            </div><!-- /.row -->
        </div><!-- .container -->
    </section>
    <!-- featuer-wrap end -->

     <!-- portfolio-section start -->
    <section class="fleets-wrap">
        <div class="container">
            <div class="section-heading">
              <h2 class="section-title">Our Fleet</h2>
            </div> <!--section-heading-->
        </div><!--/.container-->

        <div class="container-fluid">
            <div class="no-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="owl-carousel fleet-carousel">
                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p1.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p1.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Rigging and loading</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p2.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p2.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Equipment/ Vessel Speces </a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p3.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p3.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Vehicle Shipping</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p4.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p3.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Offshore Engineering</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p1.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p1.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Export packing and crating</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p2.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p2.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Licensed cargo to cuba</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p3.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p3.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Inland transportation</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->
                            <div class="item">
                                <div class="owl-item-thumb">
                                    <img src="img/fleet/p4.png" alt="">
                                    <div class="owl-item-overlay"></div>
                                    <a class="img-link" href="img/fleet/p3.png"><img src="img/zoomin.png" alt="+"/></a>
                                </div><!-- owl-item-thumb -->
                                <div class="owl-tem-content">
                                    <h3><a href="#">Custom brokerage</a></h3>
                                    <p>Efficiently productize extensible portals before compelling methods.</p>
                                </div><!-- owl-item-content -->
                            </div><!-- /item -->

                        </div><!--/.owl-carousel-->

                        <!-- owl-carousel-control -->
                        <div class="fleet-carousel-navigation
                            slider-control">
                            <span class="prev left"><i class="flaticon-previous11"></i></span>
                            <span class="next right"><i class="flaticon-next15"></i></span>
                        </div>

                    </div><!-- /.col-md-12 -->

                </div><!-- /.row -->
            </div><!--/.no-padding-->
        </div><!-- /.container-fluid -->
    </section>
    <!-- fleets-wrap end -->

    <!-- Testimonial-wrap start -->
    <section class="testimonial-wrap">
        <div class="container">
            <div class="section-heading">
              <h2 class="section-title">We are trusted by</h2>
            </div> <!--section-heading-->
        </div>

        <!-- testimonial-carousel-slider -->
        <div id="Carousel" class="carousel slide carousel-fade">

            <div class="carousel-inner">
                <div class="item active">
                    <div class="media">
                        <div class="media-left">
                            <div class="item-left-thumb">
                                 <img class="img-responsive" src="img/client/client1.png" alt="client">

                                <div class="author-info row row-flex row-flex-wrap">
                                    <div class="col-xs-7">
                                        <div class="author-name">
                                            <span>Clarence Ellis</span><small>CEO</small>
                                        </div>
                                    </div>
                                    <div class="col-xs-5">
                                        <img src="img/client/client-org1.png" alt="img">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col -->

                        <div class="media-body">
                            <div class="item-right-text">
                                Enthusiastically myocardinate scalable core competencies via worldwide synergy. Seamlessly develop intermandated alignments through extensible processes. Professionally leverage other's bricks-and-clicks potentialities and high-payoff deliverables.Completely underwhelm 24/365 leadership skills rather than stand-alone vortals. Distinctively actualize progressive outsourcing before equity invested niches.
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                </div><!-- /item -->

                <div class="item">
                    <div class="media">
                        <div class="media-left">
                            <div class="item-left-thumb">
                                 <img class="img-responsive" src="img/client/client2.png" alt="client">

                                <div class="author-info row row-flex row-flex-wrap">
                                    <div class="col-xs-7">
                                        <div class="author-name">
                                            <span>Clarence Ellis</span><small>CEO</small>
                                        </div>
                                    </div>
                                    <div class="col-xs-5">
                                        <img src="img/client/client-org1.png" alt="img">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col -->

                        <div class="media-body">
                            <div class="item-right-text">
                                Enthusiastically myocardinate scalable core competencies via worldwide synergy. Seamlessly develop intermandated alignments through extensible processes. Professionally leverage other's bricks-and-clicks potentialities and high-payoff deliverables.Completely underwhelm 24/365 leadership skills rather than stand-alone vortals. Distinctively actualize progressive outsourcing before equity invested niches.
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                </div><!-- /item -->

            </div><!-- /carousel-inner -->

        </div><!-- /.carousel -->


        <!-- carousel-controls -->
        <div class="slider-control">
            <a class="left carousel-control" href="#Carousel" data-slide="prev">
                <span class="flaticon-previous11"></span>
            </a>
            <a class="right carousel-control" href="#Carousel" data-slide="next">
                <span class="flaticon-next15"></span>
            </a>
        </div>

    </section>
    <!-- Testimonial-wrap end -->

    <!-- Pricing-wrap start -->
    <section class="pricing-wrap section-padding">
        <div class="container">
            <div class="section-heading">
              <h2 class="section-title">Weights and prices</h2>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="no-padding">
                        <div class="pricing-table first-col">
                            <div class="pricing-header">
                                <div class="pricing-title">
                                    Standard
                                </div>
                                <div class="pricing-price">
                                4.95$
                                </div>
                            </div><!-- /.pricing-header -->
                            <div class="pricing-desc pricing-cell">
                                7 to 10 business days
                            </div>
                        </div><!-- /.pricing-table -->
                    </div><!-- /.no-padding -->
                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="no-padding">
                        <div class="pricing-table second-col">
                            <div class="pricing-header">
                                <div class="pricing-title">
                                    Premium
                                </div>
                                <div class="pricing-price">
                                10$
                                </div>
                            </div><!-- /.pricing-header -->
                            <div class="pricing-desc pricing-cell">
                                3 business days
                            </div>
                        </div><!-- /.pricing-table -->
                    </div><!-- /.no-padding -->

                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="no-padding">
                        <div class="pricing-table third-col">
                            <div class="pricing-header">
                                <div class="pricing-title">
                                    Express
                                </div>
                                <div class="pricing-price">
                                16$
                                </div>
                            </div><!-- /.pricing-header -->
                            <div class="pricing-desc pricing-cell">
                                3 business days
                            </div>
                        </div><!-- /.pricing-table -->
                    </div><!-- /.no-padding -->

                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="no-padding">
                        <div class="pricing-table fourth-col">
                            <div class="pricing-header">
                                <div class="pricing-title">
                                    Express plus
                                </div>
                                <div class="pricing-price">
                                20$
                                </div>
                            </div><!-- /.pricing-header -->
                            <div class="pricing-desc pricing-cell">
                                1 business days
                            </div>
                        </div><!-- /.pricing-table -->
                    </div><!-- /.no-padding -->
                </div><!-- /.col -->

            </div><!-- /.row -->

            <div class="row">
                <div class="no-padding">
                    <div class="col-xs-12">
                        <div class="pricing-footer text-center">
                            We calculate our rates per shipment, based on total weights minimum of one pound.
                        </div>
                    </div>
                </div>
            </div><!--/.row-->
        </div><!-- /.container -->

    </section>
    <!-- Pricing-wrap end -->

    <?php
}
 ?>
