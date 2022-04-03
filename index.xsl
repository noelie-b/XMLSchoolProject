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
                            <a class="navbar-brand" href="#"><xsl:value-of select="accueil/auteur"/>Noélie Bottero</a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse top-right-menu-ul bounceInRight wow" id="bs-example-navbar-collapse-1" data-wow-duration="4s">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="1.html"><xsl:value-of select="//exercices/exo[1]/titre"/></a></li>
                                <li><a href="2.html"><xsl:value-of select="//exercices/exo[2]/titre"/></a></li>
                                <li><a href="3.html"><xsl:value-of select="//exercices/exo[3]/titre"/></a></li>
                                <li><a href="5.html"><xsl:value-of select="//exercices/exo[4]/titre"/></a></li>
                                <li><a href="8.html"><xsl:value-of select="//exercices/exo[7]/titre"/></a></li>
                                <li><a href="14.html"><xsl:value-of select="//exercices/exo[5]/titre"/></a></li>
                                <li><a href="15.html"><xsl:value-of select="//exercices/exo[6]/titre"/></a></li>
                              
                            </ul>
                        </div><!-- End navbar-collapse -->
                    </div><!-- End container -->
                </nav>
                
                <div class="container wow bounceInDown" data-wow-duration="5s">
                    <div class="row">
                        <div class="col-md-offset-2 col-md-8 text-center slide-text">
                            <h1><xsl:value-of select="//accueil/titre"/></h1>
                            <p><xsl:value-of select="//accueil/para"/></p>
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
                            <h1>Exercices</h1>
                            <div  class="text-center"><span class="underline"></span></div>
                        </div>
                    </div><!-- End col-md-12 -->
                </div><!-- End row -->
                
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-indent"></i>
                            <h4><a href="1.html"><xsl:value-of select="//exercices/exo[1]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[1]/commentaire"/></p>
                        </div>
                    </div><!-- End col-md-3-->
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-code"></i>
                            <h4><a href="2.html"><xsl:value-of select="//exercices/exo[2]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[2]/commentaire"/></p>
                        </div>
                    </div><!-- End col-md-3-->
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-book"></i>
                            <h4><a href="3.html"><xsl:value-of select="//exercices/exo[3]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[3]/commentaire"/></p>
                        </div>			
                    </div><!-- End col-md-3-->
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-search"></i>
                            <h4><a href="5.html"><xsl:value-of select="//exercices/exo[4]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[4]/commentaire"/></p>
                        </div>			
                    </div><!-- End col-md-3-->
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-code"></i>
                            <h4><a href="8.html"><xsl:value-of select="//exercices/exo[7]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[7]/commentaire"/></p>
                      
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-rss"></i>
                            <h4><a href="14.html"><xsl:value-of select="//exercices/exo[5]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[5]/commentaire"/></p>
                        </div>			
                    </div><!-- End col-md-3-->
                    <div class="col-md-3 col-sm-6">
                        <div class="features-div">
                            <i class="fa fa-database"></i>
                            <h4><a href="15.html"><xsl:value-of select="//exercices/exo[6]/titre"/></a></h4>
                            <p><xsl:value-of select="//exercices/exo[6]/commentaire"/></p>
                        </div>			
                    </div><!-- End col-md-3-->
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