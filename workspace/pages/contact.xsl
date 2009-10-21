<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/get-google-maps.xsl"/>

<xsl:template match="data">
	<div class="left">
		<h3>Phone</h3>
		<address><span style="font-style: normal; font-size: larger">(561) 745-0072</span></address>
		<h3>Fax</h3>
		<address><span style="font-style: normal; font-size: larger">(561) 745-0074</span></address>
		<h3>Address</h3>
		<address>
			Admirals Professional Center<br />
			3535 Military Trail, Suite 102<br/>
			Jupiter, FL. 33458
		</address>
                <p>
                        The office is located on Military Trail, one mile north of Donald Ross Rd on the east side and just north of the Winn Dixie Shopping Plaza in Jupiter.
                </p>
		<p>
			To get directions, click <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Premier+Medical+Care+of+the+Palm+Beaches,+3535+Military+Trail+Jupiter+FL+33458,&amp;iwstate1=dir:to"><em>Get Directions</em></a> in red on the right!
		</p>
	</div>
	
	<div class="right">
  <form action="" method="post">
    <xsl:for-each select="events/request-information">
      <label class="{@result}">
        <xsl:choose>
          <xsl:when test="@result = 'success'">Thanks! You'll hear back from us soon!</xsl:when>
          <xsl:when test="name/@type = 'missing'">You didn't enter your name!</xsl:when>
          <xsl:when test="email/@type = 'missing'">You didn't enter your email address!</xsl:when>
          <xsl:when test="phone-number/@type = 'invalid'">There's something wrong with your phone number!</xsl:when>
          <xsl:when test="email/@type = 'invalid'">You entered an invalid email address.</xsl:when>
          <xsl:otherwise>There was a problem below, please make sure all the fields are filled out.</xsl:otherwise>
        </xsl:choose>
      </label>
    </xsl:for-each>
    <fieldset>
      <div>
      	<h3>To request further information, fill out the form below completely.</h3>
      	<h5>Your name and email address are required, other fields are optional.</h5>
        <label class="required">Your name *<input type="text" name="fields[name]" value="{events/request-information/post-values/name}" /></label>
        <label class="required">Email Address *<input type="text" name="fields[email]" value="{events/request-information/post-values/email}" /></label>
        <label class="required">Address<textarea name="fields[address]" rows="3" cols="3" style="height: 35px"><xsl:value-of select="events/request-information/post-values/address" /></textarea></label>
        <label class="required">Phone Number<input type="text" name="fields[phone-number]" value="{events/request-information/post-values/phone-number}" /></label>
        <label class="required">Comments<textarea name="fields[comments]" rows="3" cols="3" style="height: 55px"><xsl:value-of select="events/request-information/post-values/comments" /></textarea></label>
        <input name="send-email[recipient]" value="mdmilstein" type="hidden" />
        <input name="send-email[sender-email]" value="fields[email]" type="hidden" />
        <input name="send-email[sender-name]" value="fields[name]" type="hidden" />
        <input name="send-email[subject]" value="Someone requested further information!" type="hidden" />
        <input name="send-email[body]" value="fields[name],fields[email],fields[address],fields[phone-number],fields[comments]" type="hidden" />
        <input id="submit" type="submit" name="action[request-information]" value="Submit the form" />
      </div>
     </fieldset>
   </form><hr />
		<xsl:call-template name="get-google-map">
			<xsl:with-param name="map-type" select="'HYBRID'"/>
			<xsl:with-param name="zoom-level" select="'17'"/>
			<xsl:with-param name="location-name" select="'Premier Medical Care'"/>
			<xsl:with-param name="street-address" select="'Premier Medical Care of the Palm Beaches, 3535 Military Trail'"/>
			<xsl:with-param name="city" select="'Jupiter'"/>
			<xsl:with-param name="state" select="'FL'"/>
			<xsl:with-param name="zip-code" select="'33458'"/>
			<xsl:with-param name="map-width" select="'500px'"/>
			<xsl:with-param name="map-height" select="'350px'"/>
		</xsl:call-template>
	</div>
</xsl:template>

</xsl:stylesheet>