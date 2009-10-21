<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/testimonials.xsl"/>

<xsl:template match="data">
	<div class="superior">
                <div id="slideshow">
                        <img src="{$workspace}/images/staff-intro.jpg" class="photo" />
                        <img src="{$workspace}/images/slideshow1.jpg" class="photo" />
                        <img src="{$workspace}/images/slideshow2.jpg" class="photo" />
                        <img src="{$workspace}/images/slideshow3.jpg" class="photo" />
                        <img src="{$workspace}/images/slideshow4.jpg" class="photo" />
                        <img src="{$workspace}/images/slideshow5.jpg" class="photo" />
                        <img src="{$workspace}/images/staff-intro.jpg" class="photo" />
                        <img src="{$workspace}/images/staff-intro.jpg" class="photo" />
                        <img src="{$workspace}/images/staff-intro.jpg" class="photo" />
                        <img src="{$workspace}/images/staff-intro.jpg" class="photo" />
                </div><div style="clear: both"></div>
		<img src="{$workspace}/images/superior-medical-care.jpg" />
		<p>
			Premier Medical Care of the Palm Beaches is a "concierge-style" medical practice located in beautiful Jupiter, FL.
		</p>
                <p>
                        <img alt="Make an investment in your health with us!" src="{$workspace}/images/investment.jpg" />
                </p>
	</div>
	
	<div class="services">
		<a href="{$root}/milstein"><img src="{$workspace}/images/milstein-intro.jpg" class="photo" /><br /></a>
		<h3>Our Services</h3>
		<img src="{$workspace}/images/services-icon.jpg" class="icon" />
		<h4>We provide</h4>
		<ul>
			<li>Personalized 24/7 Medical Care</li>
			<li>Same Day Appointments</li>
			<li>Extended Doctor / Patient Office Visit with Minimum or No Wait Time</li>
			<li>After Hours Access to Dr. Milstein on Cell Phone</li>
			<li>Weekend Appointments and House Calls when needed</li>
			<li>In Office Nutrition and Fitness Consults</li>
		</ul>
		<a href="{$root}/services">Discover more&#8230;</a>
	</div>
	
	<div class="quotes">
		<img src="{$workspace}/images/our-patients-say.jpg" />
		<xsl:apply-templates select="front-testimonials/entry" />
		<a href="{$root}/testimonials">See More&#8230;</a>
	</div>
</xsl:template>

</xsl:stylesheet>