<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefront_testimonials extends Datasource{
		
		public $dsParamROOTELEMENT = 'front-testimonials';
		public $dsParamORDER = 'asc';
		public $dsParamLIMIT = '3';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'priority';
		public $dsParamSTARTPAGE = '1';
		public $dsParamINCLUDEDELEMENTS = array(
				'excerpt',
				'author'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Front Testimonials',
					 'author' => array(
							'name' => 'scott tesoriere',
							'website' => 'http://localhost/pmc',
							'email' => 'scott@tesoriere.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-06T18:50:29+00:00');	
		}
		
		public function getSource(){
			return '2';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

