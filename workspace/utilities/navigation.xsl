<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
  <ul>

    <xsl:apply-templates select="page"/>

  </ul>
</xsl:template>

<xsl:template match="navigation" mode="bottom">
	<ul>
		<xsl:apply-templates select="page" mode="bottom" />
	</ul>
</xsl:template>

<xsl:template match="page" mode="bottom">
	<li>
	<xsl:attribute name="class">
		<xsl:value-of select="@handle"/>
	    <xsl:if test="(@handle = $current-page)">
	      <xsl:text>, </xsl:text>
				<xsl:value-of select="'selected'"/>
	    </xsl:if>
	</xsl:attribute>
   <a href="{$root}/{@handle}/">
			<xsl:value-of select="name"/>
   </a>
  </li>	
</xsl:template>

<xsl:template match="page">
	<li>
	<xsl:attribute name="class">
		<xsl:value-of select="@handle"/>
	    <xsl:if test="(@handle = $current-page)">
	      <xsl:text> </xsl:text>
				<xsl:value-of select="'selected'"/>
	    </xsl:if>
	</xsl:attribute>
   <a href="{$root}/{@handle}/">
		<xsl:choose>
			<xsl:when test="@handle = 'milstein'">
				<xsl:value-of select="name"/>
			</xsl:when>
			<xsl:when test="@handle = 'office'">
				<xsl:value-of select="'The Office'"/>
			</xsl:when>
			<xsl:otherwise>
	     <xsl:value-of select="@handle"/>
			</xsl:otherwise>
		</xsl:choose>
   </a>
  </li>
</xsl:template>


</xsl:stylesheet>