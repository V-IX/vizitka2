<?php defined('BASEPATH') OR exit('No direct script access allowed');

class SITE_Controller extends CI_Controller {

	protected $data = array();
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('settings_model');
		$this->load->model('pageinfo_model');
		$this->load->model('navigation_model');
		$this->load->model('footer_model');
	}
	
	public function init_site($id)
	{
		$siteinfo = $this->_settings();
		
		if($siteinfo['enable'] == 0 and !$this->session->userdata('id') and uri(1) != 'cap') redirect('cap');
		elseif(($siteinfo['enable'] == 1 or $this->session->userdata('id')) and uri(1) == 'cap') redirect('/');
		
		$this->data['siteinfo'] = $siteinfo;
		$this->data['cms'] = $this->_cms();
		$this->data['pageinfo'] = $this->_sitepage($id);
		$this->data['tmenu'] = $this->_tmenu();
		$this->data['fmenu'] = $this->_fmenu();
	}
	
	public function site_seo()
	{
		$seo = array('title' => '', 'keywords' => '', 'description' => '',);
		
		$siteinfo = $this->data['siteinfo'];
		$pageinfo = $this->data['pageinfo'];
		$item = isset($this->data['item']) ? $this->data['item'] : array();
		
		if(isset($item['mTitle']))  $seo['title'] .= $item['mTitle'];#.' - ';
		elseif(isset($pageinfo['mTitle'])) $seo['title'] .= $pageinfo['mTitle'];#.' - ';
		else $seo['title'] = $siteinfo['mTitle'];
		
		if(isset($item['mKeywords']))  $seo['keywords'] = $item['mKeywords'];
		elseif(isset($pageinfo['mKeywords'])) $seo['keywords'] = $pageinfo['mKeywords'];
		else $seo['keywords'] = $siteinfo['mKeywords'];
		
		if(isset($item['mDescription']))  $seo['description'] = $item['mDescription'];
		elseif(isset($pageinfo['mDescription'])) $seo['description'] = $pageinfo['mDescription'];
		else $seo['description'] = $siteinfo['mDescription'];
		
		$this->data['seo'] = $seo;
	}
	
	/* admin */
	
	protected function _settings()
	{
		$return = $this->settings_model->getItem();
		if(empty($return)) exit('No current settings');
		return $return;
	}
	
	protected function _cms()
	{
		return array(
			'title' => $this->config->config['cms_title'],
			'version' => $this->config->config['cms_version'],
			'copyright' => $this->config->config['cms_copyright'],
		);
	}
	
	protected function _sitepage($alias)
	{
		$return = $this->pageinfo_model->getItem($alias, true);
		return $return;
	}
	
	protected function _fmenu()
	{
		return $this->footer_model->getTree(array('visibility' => 1));
	}
	
	protected function _tmenu()
	{
		return $this->navigation_model->getTree(array('visibility' => 1));
	}
	
	
}
