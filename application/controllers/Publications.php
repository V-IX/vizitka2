<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Publications extends SITE_Controller {
	
	protected $model = '';
	protected $page = 'publications';
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('publications_model');
		$this->model = $this->publications_model;
	}
	
	public function index()
	{
		$this->init_site($this->page);
		
		$params = array('visibility' => 1);
		$count = $this->model->getCount($params);
		$pagination = site_pagination(uri(1).'/index', $count);
		$this->data['items'] = $this->model->getItems($pagination['per_page'], $pagination['offset'], 'num|DESC//addDate|DESC', $params, true);
		
		$this->load->library('pagination');
		$this->pagination->initialize($pagination);
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		
		$this->site_seo();
		$this->data['view'] = 'pages/publications';
		$this->load->view('site/common/template', $this->data);
	}
	
	public function view()
	{
		$this->init_site($this->page);
		$data = $this->data;
		
		$item = $this->model->getItem(uri(2), true, array('visibility' => 1));
		if(empty($item)) redirect(uri(1));
		
		$this->data['item'] = $item;
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		$this->breadcrumbs->add($item['title'], uri(1).'/'.$item['alias']);
		
		$this->site_seo();
		$this->data['view'] = 'pages/publication';
		$this->load->view('site/common/template', $this->data);
	}
}
