<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h2>We provide</h2>
        <img class="photo float-right" src="{$workspace}/images/staff-intro.jpg" />
<ul>
	<li>Personalized <b>24/7</b> Medical Care</li>
	<li class="alt"><em>Same Day</em> Appointments</li>
	<li>Extended Doctor / Patient Office Visit with Minimum or No Wait Time</li>
	<li class="alt"><em>After Hours</em> Access to Dr. Milstein on Cell Phone</li>
	<li class="alt">Weekend Appointments and House Calls when needed</li>
	<li>Hospital Privileges at Jupiter Medical Center and Palm Beach Gardens Medical Center</li>
	<li class="alt">In Office Nutrition and Fitness Consults</li>
	<li><em>Annual</em> Executive Level Physical Exams</li>
	<li><em>Comprehensive</em> In Office Blood Panel, Urinalysis and EKG</li>
	<li class="alt">Coordinated Care with Specialists In and Out of State</li>
	<li>Discounted <em>Emergency</em> Air Ambulance Transport Flights Arranged if needed</li>
	<li class="alt">Intimate Waiting Room with High-Speed Internet and Refreshments</li>
	<li class="no-border alt">Appointments for Out of Town Family and Guests if Needed</li>
	<li class="no-border">In-office Ultrasound Scanning Technology</li>
	<li class="last no-border alt"><strong>Peace of mind... <em>&#8220;Priceless!&#8221;</em></strong></li>
</ul>
<h3>Any questions? Please don't hestitate <a href="{$root}/contact">to contact us!</a></h3>
<p>You can call us at (561) 745-0072, and you can find more detailed contact information <a href="{$root}/contact">by visiting the contact page and clicking here.</a></p>
</xsl:template>

</xsl:stylesheet>