<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="articles/entry">
	<div class="news">
		<div class="title">
			<xsl:copy-of select="title/* | title/text()" />
		</div>
		<p>
			<xsl:value-of select="body"/>
		</p>
		<a href="{link}">Read More&#8230;</a>
	</div>
</xsl:template>


</xsl:stylesheet>