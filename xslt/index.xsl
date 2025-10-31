<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://dse-static.foo.bar"
    version="2.0" exclude-result-prefixes="xsl tei xs local">
    <xsl:output encoding="UTF-8" media-type="text/html" method="html" version="5.0" indent="yes" omit-xml-declaration="yes"/>

    <xsl:import href="partials/html_head.xsl"/>
    <xsl:import href="partials/html_navbar.xsl"/>
    <xsl:import href="partials/html_footer.xsl"/>
    <xsl:import href="partials/one_time_alert.xsl"/>
    <xsl:import href="partials/blockquote.xsl"/>
    <xsl:import href="partials/zotero.xsl"/>

    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select='"MRP (statisch)"'/>
        </xsl:variable>
        <xsl:call-template name="zoterMetaTags"></xsl:call-template>
        <html class="h-100" lang="{$default_lang}">
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
                </xsl:call-template>
            </head>            
            <body class="d-flex flex-column h-100">
                <xsl:call-template name="nav_bar"/>
                <main class="flex-shrink-0 flex-grow-1">
                    <div class="container col-xxl-8 pt-3">
                        <div class="row flex-lg-row align-items-center g-5 py-5">
                            <div class="col-lg-6">
                                <h1 class="lh-base">
                                    <span class="display-6"><xsl:value-of select="$project_short_title"/></span>
                                    <br/>
                                    <span class="display-5"><xsl:value-of select="$project_title"/></span>
                                </h1>
                                <p class="text-end">Demo Applikation, erstellt für die ACDH Tool-Gallery 11.3</p>
                                <p class="lead"> Die Daten stammen von: Stephan Kurz. (2024). oeaw-ministerratsprotokolle/mp-edition-data: v. 1.5 including CMR calendar data 1872–1914 (v.1.5). Zenodo. <a href="https://doi.org/10.5281/zenodo.11484662">https://doi.org/10.5281/zenodo.11484662</a></p>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                                    <a href="search.html" type="button" class="btn btn-primary btn-lg px-4 me-md-2">Volltextsuche</a>
                                    <a href="toc.html" type="button" class="btn btn-outline-primary btn-lg px-4">Zu den Protokollen</a>
                                </div>
                            </div>
                            <div class="col-10 col-sm-8 col-lg-6">
                                <figure class="figure">
                                    <img src="images/title-image.jpg" class="d-block mx-lg-auto img-fluid" alt="Friedrich Ferdinand Freiherr von Beust, via Wikimedia Commons" width="400" height="600" loading="lazy"/>
                                    <figcaption class="pt-3 figure-caption">Friedrich Ferdinand Freiherr von Beust um 1860; von Autor/-in unbekannt - <a rel="nofollow" class="external free" href="http://www.aeiou.at/aeiou.encyclop.data.image.b/b417372a.jpg">http://www.aeiou.at/aeiou.encyclop.data.image.b/b417372a.jpg</a>, Gemeinfrei, <a href="https://commons.wikimedia.org/w/index.php?curid=1326691">Link</a></figcaption>
                                </figure>
                            </div>
                        </div>
                    </div>
                </main>
                
                <xsl:call-template name="html_footer"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>