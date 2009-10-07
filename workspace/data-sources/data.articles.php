<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcearticles extends Datasource{
		
		public $dsParamROOTELEMENT = 'articles';
		public $dsParamORDER = 'asc';
		public $dsParamLIMIT = '5';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'priority';
		public $dsParamSTARTPAGE = '1';
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'body: formatted',
				'link'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Articles',
					 'author' => array(
							'name' => 'scott tesoriere',
							'website' => 'http://localhost/pmc',
							'email' => 'scott@tesoriere.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-06T18:38:43+00:00');	
		}
		
		public function getSource(){
			return '1';
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

