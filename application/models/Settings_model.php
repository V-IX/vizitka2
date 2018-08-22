<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Settings_model extends CI_Model {
	
	protected $_folder = 'settings';
	protected $_table = 'settings';
	
	public function getItems()
	{
		
	}
	
	public function getItem($params = array())
	{
		return $this->query->item($this->_table);
	}
	
	public function update()
	{
		$insert = $this->post();
		
		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		
		$error = $this->query->update($this->_table, $insert);
		if($error)
		{
			return $error;
		} else {
			set_flash('result', action_result('success', fa('check mr5').' Настройки успешно изменены!', true));
			return false;
		}
	}
	
	public function post()
	{
		$return = $this->input->post();
		if(array_key_exists('csrf_test_name', $return)) unset($return['csrf_test_name']);
		if(array_key_exists('oldImg', $return)) unset($return['oldImg']);
		
		if(array_key_exists('enable', $return)) $return['enable'] = $return['enable'] ? 1 : 0;
		else $return['enable'] = 0;
		
		if(array_key_exists('showImg', $return)) $return['showImg'] = $return['showImg'] ? 1 : 0;
		else $return['showImg'] = 0;
		
		if(array_key_exists('offerAdv', $return)) $return['offerAdv'] = json_encode($return['offerAdv']); 
		
		return $return;
	}
	
	# VALIDATE
	
	public function validate()
	{
		$rules = array(
			array(
				'field' => 'title',
				'label' => 'Название сайта',
				'rules'   => 'trim|required|max_length[255]'
			),
			array(
				'field' => 'descr',
				'label' => 'Описание сайта',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'owner',
				'label' => 'Владелец сайта',
				'rules'   => 'trim'
			),
			array(
				'field' => 'details',
				'label' => 'Реквизиты',
				'rules'   => 'trim'
			),
			array(
				'field' => 'email',
				'label' => 'E-mail',
				'rules'   => 'trim|required|max_length[255]|valid_email'
			),
			array(
				'field' => 'phone',
				'label' => 'Телефон (основной)',
				'rules'   => 'trim|required|max_length[255]'
			),
			array(
				'field' => 'phone2',
				'label' => 'Телефон (дополнительный)',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'phoneCity',
				'label' => 'Телефон (городской)',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'adres',
				'label' => 'Адрес',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'skype',
				'label' => 'Skype',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'mTitle',
				'label' => 'Title',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'mKeywords',
				'label' => 'Meta Keywords',
				'rules'   => 'trim'
			),
			array(
				'field' => 'mDescription',
				'label' => 'Meta Description',
				'rules'   => 'trim'
			),
			array(
				'field' => 'enable',
				'label' => 'Включить сайт',
				'rules'   => ''
			),
			array(
				'field' => 'capTitle',
				'label' => 'Заголовок для заглушки',
				'rules'   => 'trim|max_length[255]'
			),
			array(
				'field' => 'capDescr',
				'label' => 'Описание для заглушки',
				'rules'   => 'trim'
			),
			array(
				'field' => 'offerTitle',
				'label' => 'Заголовок оффера',
				'rules'   => 'trim'
			),
			array(
				'field' => 'offerText',
				'label' => 'Текст оффера',
				'rules'   => 'trim'
			),
		);
		
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="form-error">', '</div>');
		$this->form_validation->set_rules($rules);
		return $this->form_validation->run();
	}
	
	# LOAD IMAGE
	
	public function configPhoto()
	{
		$config['upload_path'] = './assets/uploads/'.$this->_folder.'/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = 2048;
		$config['encrypt_name'] = true;
		$config['remove_spaces'] = false;
		$congig['overwrite'] = true;
		return $config;
	}
	
	public function loadphoto($img)
	{
		
		$this->load->helper('file');
		if ($this->upload->do_upload($img)) {
			$img = $this->upload->data();
			$file = $img['file_name'];
			rename('./assets/uploads/settings/'.$file, './assets/uploads/settings/logo'.$img['file_ext']);
			return 'logo'.$img['file_ext'];
		} else {
			return false;
		}		
	}
	
	public function deletephoto($file)
	{
		$path = '/assets/uploads/'.$this->_folder.'/'.$file;
		$path_thumb = '/assets/uploads/'.$this->_folder.'/thumb/'.$file;
		if(file_exists('.'.$path) and !is_dir('.'.$path)) unlink('.'.$path);
		if(file_exists('.'.$path_thumb) and !is_dir('.'.$path_thumb)) unlink('.'.$path_thumb);
	}
}
