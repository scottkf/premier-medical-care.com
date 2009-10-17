<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<img class="photo float-right" src="{$workspace}/images/milstein-family.jpg" />
	<h3>Education</h3><br />
	<p>
		Dr. Michael Milstein is a Magna Cum Laude Graduate of Tufts University in Boston and the N.Y. College of Osteopathic Medicine in 1989. He then completed his Family Practice Residency at Overlook Hospital in Summit, New Jersey; a major teaching affiliate of Columbia University College of Physicians and Surgeons.
	</p>
	<p>
		He moved to Florida in 1993 and became the Medical Director of Wellington Regional Center. While in private practice in Wellington, he served as Chairman of the Family Practice Department at Palms West Hospital.
	</p>
	<p>
		He is Board-Certified in Family Practice and is licensed in Florida, New York, and New Jersey. Dr Milstein did a fellowship in critical care medicine and has sub-speciality interest in women’s health, cardiology, geriatrics, and sports medicine. He has been practicing medicine in Palm Beach County since 1993.
	</p>
	<h3>Interests</h3><br />
	<p>
		Dr. Milstein is an avid sportsman who has competed in many marathons; including N.Y.C. and Boston. He was also a finisher in the Ironman Triathlon in Hawaii in 1983. Dr. Milstein was given the distinct honor of carrying the Olympic Torch during the 1996 Atlanta Olympic Games in recognition of the many hours of volunteer work for the American Heart Association
	</p>
	<p>
		Dr. Milstein has taken part in a variety of research studies including diabetes, hypertension, and new antibiotic clinical trials. He currently sits on the Medical Quality Review Committee at Jupiter Medical Center.
	</p>
	<div class="clear"/>
	<h3>Family</h3><br />
	<p>
		He was born and raised in New York and met his wife Stacy in Florida. They have three beautiful daughters and love to travel as a family. His outside interests include photography, jazz, classical music, cycling, tennis and running.
	</p>
	<div class="family-pics">
		<div>
			<img class="photo" src="{$workspace}/images/milstein-kids-1.jpg" />
			<img class="photo" src="{$workspace}/images/milstein-kids-3.jpg" />
		</div>
		<div>
			<img class="photo" src="{$workspace}/images/milstein-kids-2.jpg" />
		</div>
		<div class="last">
			<img class="photo" src="{$workspace}/images/milstein-kids-4.jpg" />
		</div>
	</div>
        <div class="two-column">
		<div>
			<img class="photo" src="{$workspace}/images/milstein-kids-5.jpg" />
		</div>
		<div class="last">
			<img class="photo" src="{$workspace}/images/milstein-kids-6.jpg" />
		</div>                
        </div>
        <div class="two-column">
		<div>
			<img class="photo" src="{$workspace}/images/milstein-family1.jpg" />
		</div>
		<div class="last">
			<img class="photo" src="{$workspace}/images/milstein-family2.jpg" />
		</div>                
        </div>
        <div class="two-column">
		<div class="last">
			<img class="photo" src="{$workspace}/images/milstein-kids-7.jpg" />
		</div>                
        </div>

</xsl:template>

</xsl:stylesheet>