<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Errors extends SITE_Controller {

	protected $model = '';
	protected $page = 'errors';
	
	public function __construct ()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->init_site($this->page);
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		
		$this->site_seo();
		$this->data['view'] = 'common/error';
		$this->load->view('site/common/template', $this->data);
	}
}
