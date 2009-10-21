<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/testimonials.xsl"/>

<xsl:template match="data">
	<div class="quotes">
		<xsl:apply-templates select="testimonials/entry" />
	</div>
<h3>Any questions? Please don't hestitate to contact us!</h3>
<p>You can call us at (561) 745-0072, and you can find more detailed contact information <a href="{$root}/contact">by visiting the contact page and clicking here.</a></p>
</xsl:template>

</xsl:stylesheet>