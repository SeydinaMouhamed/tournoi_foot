<style media="screen">
     .ttr{text-align: center;}
     .grp{width: 20%;text-align: center;}
     .drp{width: 20px;}
     .scr{width: 30px;text-align: center;}
     .pys{padding: 3px;width: auto;}
     td{height: 20px;}
 </style>

            <?php
            require_once("classes/Arbitres.class.php");
            require_once("classes/Stades.class.php");
            require_once("forms/tiragePoule.php");
            getHeaderWeb();
            if(!isset($_GET["idTournoi"]) || !$infosT=Tournois::getTournoi(intval($_GET["idTournoi"])))die("Echec page");
            if(!$infosT->getValueEncoded("tournoisOrganisateur")){die("<center><h3 style='color:red'>PLANING NON ENCORE RETABLIS</h3></center>"); }
            ?>
            <div class="container" style="min-height:300px">
                <h3 style="color:blue;text-align:center">PLANING <?php echo $infosT->getValueEncoded("tournoisName"); ?></h3>
                <div style="background-color:white;" class="col-md-12"><br /><br />
                    <?php
                    $thisTournoiId=intval($_GET["idTournoi"]);
                    if($stape = Tournois::getTirageStape($thisTournoiId)){
                        if($selectedEquipes = Tournois::getSelEqOnTourID_ArrayFormat($thisTournoiId)){
                            switch ($stape) {

                                case ETAPE_REMPLISSAGE_MANNUEL:
                                        echo "Remplissage manuelle";
                                    break;
                                case ETAPE_MATCHS_POULE:
                                    echo "<div style='color:green;margin-top:-30px;box-shadow: 5px 5px 8px rgb(70, 187, 220), 10px 10px 8px #f1aa40, 15px 15px 8px;border:1px solid grey;width:100%;border-radius:30px 30px 0px 0px;text-align:center'><i style='float:left;margin-left:20px;margin-top:5px;' class='fa fa-futbol-o fa-2x'></i>PHASE DE POULES<i style='float:right;margin-right:20px;margin-top:5px;' class='fa fa-futbol-o fa-2x'></i></div><br />";
                                        if(!$organisateurId=CommunDb::getMatchData(TB_TOURNOIS,[["idtournois",$thisTournoiId]],"tournoisOrganisateur")["tournoisOrganisateur"]){
                                            getFormSelectPaysOraganisateur($thisTournoiId,$selectedEquipes);
                                        }else{
                                            ?>
                                            <h1></h1>
                                            <?php
                                            if($tirage = getTirageMatchsPoules($thisTournoiId,$organisateurId,$selectedEquipes)){
                                                getTableTirageMatchsPoules($tirage);
                                            }

                                        }
                                    break;
                                case ETAPE_MATCHS_QRT:
                                        echo "Quart de finale";
                                    break;
                                case ETAPE_MATCHS_DMF:
                                        echo "Demi finale";
                                    break;
                                case ETAPE_MATCH_CLS:
                                        echo "finale";
                                    break;
                                case ETAPE_MATCH_FINALE:
                                        echo "Poule";
                                    break;

                                default:

                                    break;
                            }
                        }
                        else{
                            echo "<center>
                            Aucune equipe selectionné pour ce tournoi
                            </center>";
                        }
                    }else{
                        echo "<center>
                        Aucune etape trouvé
                        </center>";
                    }
                     ?>
                </div>
                <div class="col-md-1">

                </div>
                <div class="col-md-10">
                    <br />
                <table  style="background-color:white" class="table" border="1">
                    <caption><center>

                    <h3>CALENDRIER DES MATCHS  <?php echo $infosT->getValueEncoded("tournoisName"); ?></h3></center></caption>
                    <thead>
                        <tr >
                            <th class="text-center" >Phase de poules</th>
                            <th class="text-center" >Quarts de finale</th>
                            <th class="text-center" >Demi-finales</th>
                            <th class="text-center" >Finale & 3<sup>iéme</sup> place</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <table style="width:100%">
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table style="width:100%">
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"><br />Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">1<sup>er</sup>Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">2<sup>e</sup>Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">1<sup>er</sup>Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">2<sup>e</sup>Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">1<sup>er</sup>Grp B</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">2<sup>e</sup>Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">1<sup>er</sup>Grp C</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">2<sup>e</sup>Grp D</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table style="width:100%">
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%">
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" style="padding-top:23px" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">V 1<sup>er</sup> Qrt</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">V 4<sup>e</sup> Qrt</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3">Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">V 2<sup>e</sup> Qrt</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">V 3<sup>e</sup> Qrt</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table style="width:100%">
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" >
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%">
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"></td></tr>
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>
                                                <tr>
                                                    <td class="grp"></td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" style="padding-top:0px;" colspan="3"><h3>FINALE</h3>Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td class="ttr" colspan="3"><br /><br /><br /><br /><br /><h5>TROIXIEME PLACE</h5>Jour Stade Adresse</td></tr>
                                    <tr>
                                        <td>
                                            <table  style="width:100%" border="1">
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Senegal.png" /></td>
                                                    <td class="pys">Senegal</td>
                                                    <td class="scr">2</td>
                                                </tr>
                                                <tr>
                                                    <td class="grp">Grp A</td>
                                                    <td class="drp"><img style="width:20px;height:20px" src="img/drapeaux/Togo.png" /></td>
                                                    <td class="pys">Togo</td>
                                                    <td class="scr">0</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                    <tr></tr>
                                    <tr>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
              </div>
            </div>
