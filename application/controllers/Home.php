<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends SITE_Controller {

	public function index()
	{
		$this->init_site('home');
		
		$this->site_seo();
		$this->data['view'] = 'common/index';
		$this->load->view('site/common/template', $this->data);
	}
}
