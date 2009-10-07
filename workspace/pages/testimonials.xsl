<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/testimonials.xsl"/>

<xsl:template match="data">
	<div class="quotes">
		<xsl:apply-templates select="testimonials/entry" />
	</div>
</xsl:template>

</xsl:stylesheet>