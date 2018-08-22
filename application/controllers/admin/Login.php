<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	
	public function index()
	{
		$this->load->model('users_model');
		
		$data['error'] = false;
		if($this->input->post() and $this->users_model->validate('login'))
		{
			$error = $this->users_model->login();
			if(!$error) redirect('/admin');
			else $data['error'] = $error;
		}
		
		$this->load->model('settings_model');
		$data['settings'] = $this->settings_model->getItem();

		$item = $this->query->item('theme_admin', array('current' => 1));
		if(empty($item)) exit('No current theme');
		$data['theme_admin'] = $item['alias'];
		
		$this->load->view('admin/common/login', $data);
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('/');
	}

	public function password()
	{
		$this->load->model('users_model');
		
		$data['error'] = false;
		if($this->input->post() and $this->users_model->validate('restorePass'))
		{
			$error = $this->users_model->restorePass();
			if(!$error) redirect('/admin/login');
			else $data['error'] = $error;
		}
		
		$this->load->model('settings_model');
		$data['settings'] = $this->settings_model->getItem();

		$item = $this->query->item('theme_admin', array('current' => 1));
		if(empty($item)) exit('No current theme');
		$data['theme_admin'] = $item['alias'];	
		
		$this->load->view('admin/common/login_password', $data);
	}
}
