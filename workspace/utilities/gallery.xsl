<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="pictures/entry">
	<li>
		<a rel="gallery" title="{caption}" href="{$workspace}{image/@path}/{image/filename}">
			<img class="photo" src="{$root}/image/1/200/0{image/@path}/{image/filename}" />
		</a>
	</li>
</xsl:template>


</xsl:stylesheet>