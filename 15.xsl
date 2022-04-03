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
                                <h1><xsl:value-of select="//exercice[6]/titre"/></h1>
                                <p><xsl:value-of select="//exercice[6]/commentaire"/></p>
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
                                <font size="3pt"><p align="center"><xsl:value-of select="//exercice[6]/image[1]"/></p></font>
                                <br/>
                                <img src="images/exo_15.PNG" class="center"/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[6]/partie[1]"/></p></font>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[1]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_1.xsl" download="exercice_15/Trameur_1.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_1.txt" download="exercice_15/Trameur_1.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[2]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_2.xsl" download="exercice_15/Trameur_2.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_2.html" download="exercice_15/Trameur_2.html"><xsl:value-of select="//exercice[4]/telechargement[2]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[3]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_3.xsl" download="exercice_15/Trameur_3.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_3.txt" download="exercice_15/Trameur_3.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[4]"/></p></font>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/remarque[1]"/></p></font>
                                <font size="3pt"><p align="center"><xsl:value-of select="//exercice[6]/commande[1]"/></p></font>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_4.xsl" download="exercice_15/Trameur_4.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_4.txt" download="exercice_15/Trameur_4.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[5]"/></p></font>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/remarque[2]"/></p></font>
                                <font size="3pt"><p align="center"><xsl:value-of select="//exercice[6]/commande[2]"/></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_5.xsl" download="exercice_15/Trameur_5.xsl"><xsl:value-of select="//exercice[4]/telechargement[1]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Trameur_5.txt" download="exercice_15/Trameur_5.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <br/>
                                
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                
                                <font size="5"><p align="center"><xsl:value-of select="//exercice[6]/partie[2]"/></p></font>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[6]"/></p></font>
                                <font size="4pt"><p align="center"><xsl:value-of select="//exercice[6]/image[2]"/></p></font>
                                <p></p>
                                <img src="images/15.1.PNG" class="center"/>
                                <br/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Question_15.1.xq" download="exercice_15/Question_15.1.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Question_15.1.txt" download="exercice_15/Question_15.1.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
                                <div  class="text-center"><span class="underline"></span></div>
                                <br/>
                                <font size="3pt"><p align="justify"><xsl:value-of select="//exercice[6]/consigne[7]"/></p></font>
                                <font size="4pt"><p align="center"><xsl:value-of select="//exercice[6]/image[3]"/></p></font>
                                <img src="images/15.2.PNG" class="center"/>
                                <font size="4pt"><p align="center"><a href="exercice_15/Question_15.2.xq" download="exercice_15/Question_15.2.xq"><xsl:value-of select="//exercice[4]/telechargement[5]"/></a></p></font>
                                <font size="4pt"><p align="center"><a href="exercice_15/Question_15.2.txt" download="exercice_15/Question_15.2.txt"><xsl:value-of select="//exercice[4]/telechargement[3]"/></a></p></font>
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