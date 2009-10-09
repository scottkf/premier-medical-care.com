<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/articles.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="no"
	encoding="UTF-8"
	indent="yes" />
	
<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">

<html>
<head>
	<title>
		<xsl:value-of select="$website-name"/>
		<xsl:text> &#8212; </xsl:text>
		<xsl:value-of select="$page-title"/>
	</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="description" content="Premier Medical Care is a concierge service in Palm Beach, FL" />
  <meta name="keywords" content="concierge doctor, concierge palm beach, concierge jupiter" />
  <meta name="copyright" content="Premier Medical Care" />
  <meta name="company" content="Premier Medical Care" />
  <!--
    
    Looking is learning, taking is learning, taking credit is :(
    
  -->
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="stylesheet" href="{$workspace}/css/screen.css" type="text/css" media="screen, projection" />
		<link rel="stylesheet" href="{$workspace}/css/print.css" type="text/css" media="print" />
		<xsl:text disable-output-escaping="yes">&lt;!--[if IE ]></xsl:text>
			<link rel="stylesheet" type="text/css" media="screen, projection" href="{$workspace}/css/ie.css"/>
		<xsl:text disable-output-escaping="yes">&lt;![endif]--></xsl:text>
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/colorbox.css" />
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
		<script type="text/javascript" src="{$workspace}/javascript/jquery.colorbox-min.js"></script>
 		<script type="text/javascript" src="{$workspace}/javascript/analytics.js"></script>
		<script type="text/javascript" src="{$workspace}/javascript/site.js"></script>
		<xsl:if test="$root-page = 'contact'">
	    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		  <script type="text/javascript" src="http://www.google.com/jsapi?autoload=%7Bmodules%3A%5B%7Bname%3A%22maps%22%2Cversion%3A3%2Cother_params%3A%22sensor%3Dfalse%22%7D%5D%7D"></script>			
		</xsl:if>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="logo">
				<a href="{$root}"><img src="{$workspace}/images/pmc-logo.jpg" /></a>
			</div>
			<xsl:apply-templates select="data/articles/entry" />
		</div>
		
		<div id="nav">
			<xsl:apply-templates select="data/navigation"/>
		</div>
		
		<div id="content" class="{$root-page}">
			<xsl:apply-templates />
		</div>
		


	</div>

	<div id="bottom-container">
		<div id="footer">
			<div id="left">
				<h2>Premier Medical Care</h2>
				<address>
					Admirals Professional Center<br />
					3535 Military Trail, Suite 102<br />
					Jupiter, FL. 33458
				</address>
			</div>
			<div id="middle">
				<h2>Contact Us</h2>
				<address>
					+1 561 745 0072<br />
					Fax +1 561 745 0074
				</address>
			</div>
			<div id="right">
				<h2>Navigate the Site</h2>
				<ul>
					<xsl:apply-templates select="data/navigation" mode="bottom" />
				</ul>
			</div>
		</div>
	</div>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
