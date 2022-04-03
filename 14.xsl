<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        
        <html>
            <head>
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"></link>  
                <!-- Goggle Font -->
                <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"></link>
                <!-- Font Css -->
                <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"></link>
                <!-- Custom CSS -->
                <link rel="stylesheet" type="text/css" href="css/style.css"></link>
                <!-- Animation Css -->
                <link rel="stylesheet" href="css/animate.css"></link>
                
            </head>
            <body>
                <!-- Header -->
                <div class="header-div">
                    
                    <nav class="navbar navbar-default">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header logo-div bounceInLeft wow" data-wow-duration="2s">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse top-right-menu-ul bounceInRight wow" id="bs-example-navbar-collapse-1" data-wow-duration="4s">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="1.html"><xsl:value-of select="//exercice[1]/titre"/></a></li>
                                    <li><a href="2.html"><xsl:value-of select="//exercice[2]/titre"/></a></li>
                                    <li><a href="3.html"><xsl:value-of select="//exercice[3]/titre"/></a></li>
                                    <li><a href="5.html"><xsl:value-of select="//exercice[4]/titre"/></a></li>
                                    <li><a href="8.html"><xsl:value-of select="//exercice[7]/titre"/></a></li>
                                    <li><a href="14.html"><xsl:value-of select="//exercice[5]/titre"/></a></li>
                                    <li><a href="15.html"><xsl:value-of select="//exercice[6]/titre"/></a></li>
                                    
                                </ul>
                            </div><!-- End navbar-collapse -->
                        </div><!-- End container -->
                    </nav>
                    
                    <div class="container wow bounceInDown" data-wow-duration="5s">
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8 text-center slide-text">
                                <h1><xsl:value-of select="//exercice[5]/titre"/></h1>
                                <p><xsl:value-of select="//exercice[5]/commentaire"/></p>
                            </div><!-- End col-md-8-->
                            <div class="col-md-offset-2"></div><!-- End col-md-offset-2 -->
                        </div><!-- End Row -->
                    </div><!-- End Contanier -->
                    
                </div><!-- End header-div -->
                
                <!-- Feature -->
                
                <div class="container" id="features">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main_heading">
                                <font size="3pt"><p align="center"><xsl:value-of select="//exercice[5]/image[1]"/></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[5]/partie[1]"/></p></font>
                                <br/>
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[5]/souspartie[1]"/></p></font>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[1]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/14_1.xsl" download="exercice_14/14_1/xslt/14_1.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/resultat_xslt_1.html" download="exercice_14/14_1/xslt/resultat_xslt_1.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[2]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/14_2.xsl" download="exercice_14/14_1/xslt/14_2.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/resultat_xslt_2.txt" download="exercice_14/14_1/xslt/resultat_xslt_2.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[3]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/14_3.xsl" download="exercice_14/14_1/xslt/14_3.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xslt/resultat_xslt_3.html" download="exercice_14/14_1/xslt/resultat_xslt_3.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                
                                <font size="4"><p align="center"><xsl:value-of select="//exercice[5]/souspartie[2]"/></p></font>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[4]"/></p></font>
                      
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/1.xq" download="exercice_14/14_1/xquery/1.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/resultat1.xml.txt" download="exercice_14/14_1/xquery/resultat1.xml.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[5]"/></p></font>
                                <br/>
         
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/2.xq" download="exercice_14/14_1/xquery/2.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/resultat2.xml.txt" download="exercice_14/14_1/xquery/resultat2.xml.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[6]"/></p></font>
                                <br/>
                                
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/3.xq" download="exercice_14/14_1/xquery/3.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/resultat3.xml.txt" download="exercice_14/14_1/xquery/resultat3.xml.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[7]"/></p></font>
                                <br/>
                                
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/4.xq" download="exercice_14/14_1/xquery/4.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/resultat4.xml.txt" download="exercice_14/14_1/xquery/resultat4.xml.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[8]"/></p></font>
                                <br/>
                                
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/5.xq" download="exercice_14/14_1/xquery/5.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_1/xquery/resultat5.xml.txt" download="exercice_14/14_1/xquery/resultat5.xml.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[5]/partie[2]"/></p></font>
                                <br/>
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[5]/souspartie[1]"/></p></font>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[9]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt1.xsl" download="exercice_14/14_2/xslt/partie2_xslt1.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res1.html" download="exercice_14/14_2/xslt/res1.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[10]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt2.xsl" download="exercice_14/14_2/xslt/partie2_xslt2.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res2.html" download="exercice_14/14_2/xslt/res2.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[11]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt3_patrons_titre.xsl" download="exercice_14/14_2/xslt/partie2_xslt3_patrons_titre.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res3_titre.txt" download="exercice_14/14_2/xslt/res3_titre.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt3_patrons_description.xsl" download="exercice_14/14_2/xslt/partie2_xslt3_patrons_description.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res3_description.txt" download="exercice_14/14_2/xslt/res3_description.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[12]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt4_titre.xsl" download="exercice_14/14_2/xslt/partie2_xslt4_titre.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res4_titre.html" download="exercice_14/14_2/xslt/res4_titre.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt4_description.xsl" download="exercice_14/14_2/xslt/partie2_xslt4_description.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res4_description.html" download="exercice_14/14_2/xslt/res4_description.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[13]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt5.xsl" download="exercice_14/14_2/xslt/partie2_xslt5.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res5.txt" download="exercice_14/14_2/xslt/res5.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[14]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/partie2_xslt6.xsl" download="exercice_14/14_2/xslt/partie2_xslt6.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xslt/res6.txt" download="exercice_14/14_2/xslt/res6.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                
                                
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[5]/souspartie[2]"/></p></font>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[15]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq1.xq" download="exercice_14/14_2/xquery/xq1.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat1.txt" download="exercice_14/14_2/xquery/resultat1.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[16]"/></p></font>
                                
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq2.xq" download="exercice_14/14_2/xquery/xq2.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat2.txt" download="exercice_14/14_2/xquery/resultat2.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[17]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq3.xq" download="exercice_14/14_2/xquery/xq3.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat3.txt" download="exercice_14/14_2/xquery/resultat3.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[18]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq4.xq" download="exercice_14/14_2/xquery/xq4.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat4.txt" download="exercice_14/14_2/xquery/resultat4.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[19]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq5_2p.xq" download="exercice_14/14_2/xquery/xq5_2p.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat5_p2.txt" download="exercice_14/14_2/xquery/resultat5_p2.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq5_3p.xq" download="exercice_14/14_2/xquery/xq5_3p.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat5_3p.txt" download="exercice_14/14_2/xquery/resultat5_3p.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq5_4p.xq" download="exercice_14/14_2/xquery/xq5_4p.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat5_4p.txt" download="exercice_14/14_2/xquery/resultat5_4p.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[20]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq6.xq" download="exercice_14/14_2/xquery/rxq6.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat6.txt" download="exercice_14/14_2/xquery/resultat6.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[5]/consigne[21]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/xq7.xq" download="exercice_14/14_2/xquery/xq7.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_14/14_2/xquery/resultat7.txt" download="exercice_14/14_2/xquery/resultat7.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                             
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                
                                
                                
                            </div>
                        </div><!-- End col-md-12 -->
                    </div><!-- End row -->
                    
                    
                </div><!-- End Container -->
                
                
                
                <!-- End Feature -->
                
                
                
                <!-- About -->
                <div class="container" id="About">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main_heading">
                                <h3 align="center">A propos</h3>
                                <h5 align="center">noelie-b@live.fr</h5>
                                <h5 align="center">M1 TAL INALCO (2020 - 2021)</h5>
                                <div  class="text-center"><span class="underline"></span></div>
                            </div>
                        </div><!-- End col-md-12 -->
                    </div><!-- End row -->
                </div><!-- End container -->	
                <!-- End About -->
                
                
                <script type="text/javascript" src="js/jquery-main.js"></script>
                <script type="text/javascript" src="js/bootstrap.min.js"></script>
                <script src="js/wow.min.js"></script>
                
                <script>
                    new WOW().init();
                </script>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>