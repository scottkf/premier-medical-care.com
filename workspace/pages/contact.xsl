<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/get-google-maps.xsl"/>

<xsl:template match="data">
	<div class="left">
		<h3>Phone</h3>
		<address>+1 561 745 0072</address>
		<h3>Fax</h3>
		<address>+1 561 745 0074</address>
		<h3>Address</h3>
		<address>
			Admirals Professional Center<br />
			3535 Military Trail, Suite 102<br/>
			Jupiter, FL. 33458
		</address>
		<p>
			To get directions, click <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Admirals+Professional+Center,+3535+Military+Trail,+Suite+102+Jupiter+FL+33458,&amp;iwstate1=dir:to"><em>Get Directions</em></a> in red on the right!
		</p>
	</div>
	
	<div class="right">
		<xsl:call-template name="get-google-map">
			<xsl:with-param name="map-type" select="'HYBRID'"/>
			<xsl:with-param name="zoom-level" select="'17'"/>
			<xsl:with-param name="location-name" select="'Premier Medical Care'"/>
			<xsl:with-param name="street-address" select="'Admirals Professional Center, 3535 Military Trail, Suite 102'"/>
			<xsl:with-param name="city" select="'Jupiter'"/>
			<xsl:with-param name="state" select="'FL'"/>
			<xsl:with-param name="zip-code" select="'33458'"/>
			<xsl:with-param name="map-width" select="'500px'"/>
			<xsl:with-param name="map-height" select="'350px'"/>
		</xsl:call-template>
	</div>
</xsl:template>

</xsl:stylesheet>