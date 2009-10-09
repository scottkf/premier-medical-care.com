<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/gallery.xsl"/>

<xsl:template match="data">
<h3>Staff</h3>
<ul>
	<li class="milstein">
		<div class="left">
			<a href="{$root}/milstein"><img src="{$workspace}/images/milstein-intro.jpg" class="photo" /></a>
			<span><a href="{$workspace}/files/milstein-resume.pdf">Curriculum Vitae</a></span>
		</div>
		<div class="right">
			<span>Dr. Michael Milstein, DO, FAAFP</span><br />
			<p>
				Dr. Michael Milstein is a Magna Cum Laude Graduate of Tufts University in Boston and the N.Y. College of Osteopathic Medicine in 1989. He then completed his Family Practice Residency at Overlook Hospital in Summit, New Jersey; a major teaching affiliate of Columbia University College of Physicians and Surgeons.
			</p>
			<p>
				He moved to Florida in 1993 and became the Medical Director of Wellington Regional Center. While in private practice in Wellington, he served as Chairman of the Family Practice Department at Palms West Hospital.
			</p>
			<span><a href="{$root}/milstein">Continue reading more about Dr. Michael Milstein&#8230;</a></span>
		</div>
	</li>
	<li class="alt">
		<div class="left">
			<img src="{$workspace}/images/marla.jpg" class="photo" />
			<span><a href="{$root}/milstein">Curriculum Vitae</a></span>
		</div>
		<div class="end">
			<span>Marla, Nutritionist</span><br />
			<small><em>Registered Licensed Dietician/Nutritionist</em></small>
			<p>
				Marla received her Bachelor of Science in Nutrition and Foods from Auburn University in 1988. She has 17 years of clinical nutrition experience and has been in private practice and consulting for the past 6 years. She provides individualized, personal nutrition plans to meet your nutritional needs and goals, as well as therapeutic diets for various medical conditions.
			</p>
			<!-- <p>
				She moved to Florida in 1993 and became the Medical Director of Wellington Regional Center. While in private practice in Wellington, he served as Chairman of the Family Practice Department at Palms West Hospital.
			</p> -->
		</div>
	</li>
	<li class="alt">
		<div class="left">
			<a href="{$root}/milstein"><img src="{$workspace}/images/karen.jpg" class="photo" /></a>
			<span><a href="{$workspace}/files/karen.pdf">Curriculum Vitae</a></span>		</div>
		<div class="right">
			<span>Karen, Exercise Physiologist</span><br />
			<small><em>Exercise physiologist, certified Athletic Trainer, ACSM Certified, Director / Consultant Cardiac Rehabilitation and Medical Fitness</em></small>
			<p>
				Karen Marchelletta holds a Masters degree from the University of Miami specializing in clinical exercise physiology. She has over 3 decades of experience in medical fitness and cardiac rehabilitation. As a former Pfizer pharmaceutical health care consultant Karen intimately understands the connection between lifestyle, health and quality of life.
			</p>
		</div>
	</li>	
	<li style="clear: both">
		<div class="left">
			<img src="{$workspace}/images/manager.jpg" class="photo" />
		</div>
		<div class="right">
			<span>Gloria<br /><small>Concierge Coordinator / Nurse</small></span><br />
		</div>
	</li>	
	<li>
		<div class="left">
			<img src="{$workspace}/images/tobi.jpg" class="photo" />
		</div>
		<div class="right">
			<span>Toby<br /><small>Receptionist / Front Desk </small></span><br />
		</div>
	</li>
	<li>
		<div class="left">
			<img src="{$workspace}/images/nurse.jpg" class="photo" />
		</div>
		<div class="right">
			<span>Rickelle<br /><small>Medical Assistant / Nurse</small></span><br />
		</div>
	</li>
	<li>
		<div class="left">
			<img src="{$workspace}/images/xray-tech.jpg" class="photo" />
		</div>
		<div class="right">
			<span>Bill<br /><small>Ultrasound Technician</small></span><br />
		</div>
	</li></ul>
<h3 class="no-bottom">Our Office</h3>
<h5>Click on an image view it larger</h5>
<ul class="gallery">
	<xsl:apply-templates select="pictures/entry" />
</ul>
</xsl:template>

</xsl:stylesheet>