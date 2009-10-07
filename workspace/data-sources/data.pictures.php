<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcepictures extends Datasource{
		
		public $dsParamROOTELEMENT = 'pictures';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '50';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		public $dsParamINCLUDEDELEMENTS = array(
				'caption',
				'image'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Pictures',
					 'author' => array(
							'name' => 'scott tesoriere',
							'website' => 'http://localhost/pmc',
							'email' => 'scott@tesoriere.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-07T15:03:19+00:00');	
		}
		
		public function getSource(){
			return '3';
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

