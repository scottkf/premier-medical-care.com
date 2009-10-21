<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcenavigation extends Datasource{
		
		public $dsParamROOTELEMENT = 'navigation';
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Navigation',
					 'author' => array(
							'name' => 'scott tesoriere',
							'website' => 'http://premiermedicalcarepb.com',
							'email' => 'scott.tesoriere@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-21T00:29:59+00:00');	
		}
		
		public function getSource(){
			return 'static_xml';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				$result = "<navigation>
	    <page handle=\"services\">
	        <name>Our Services</name>
	    </page>
	    <page handle=\"office\">
	        <name>Around the Office</name>
	    </page>
	    <page handle=\"testimonials\">
	        <name>Testimonials</name>
	    </page>
	    <page handle=\"contact\">
	        <name>Contact Us</name>
	    </page>
	    <page handle=\"milstein\">
	        <name>Meet Dr Milstein</name>
	    </page>
	    <page handle=\"home\">
	        <name>Home</name>
	    </page>
</navigation>";
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

