<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="front-testimonials/entry">
	<div class="quote">
		<blockquote>&#8220; &#8230; <xsl:value-of select="excerpt"/> &#8230; &#8221;</blockquote>
		<div>&#8212; <xsl:value-of select="author"/></div>
	</div>
</xsl:template>


<xsl:template match="testimonials/entry">
	<div>
		<xsl:attribute name="class">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 0">
						<xsl:value-of select="'quote last'"/>
				</xsl:when>				
				<xsl:otherwise>
						<xsl:value-of select="'quote'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
		<blockquote>&#8220; <xsl:copy-of select="full-comment/* | full-comment/text()"/> &#8221;</blockquote>
		<div>&#8212; <xsl:value-of select="author"/></div>
	</div>
	<div class="hr {position() mod 2}"/>
</xsl:template>



</xsl:stylesheet>