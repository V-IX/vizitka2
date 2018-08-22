<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*if ( ! function_exists(''))
{
	function action_result()
	{
		return $return;
	}
}*/



/*
|--------------------------------------------------------------------------
| SESSION HELPERS
|--------------------------------------------------------------------------
*/
if ( ! function_exists('check_session'))
{
	function check_session()
	{
		
	}
}

if ( ! function_exists('set_flash'))
{
	function set_flash($key, $value = '')
	{
		$CI =& get_instance();		
		return $CI->session->set_flashdata($key, $value);
	}
}

/*
|--------------------------------------------------------------------------
| URL HELPERS
|--------------------------------------------------------------------------
*/
if ( ! function_exists('uri'))
{
	function uri($num)
	{
		$CI =& get_instance();		
		return $CI->uri->segment($num);
	}
}

/*
|--------------------------------------------------------------------------
| LIBRARIES HELPERS
|--------------------------------------------------------------------------
*/
if ( ! function_exists('admin_pagination'))
{
	function admin_pagination($base_url, $total, $per_page = 10, $uri_segment = 4)
	{
		$return = array(
			'base_url'		=> '/admin/'.trim($base_url, '/').'/',
			'total_rows'	=> $total,
			'uri_segment'	=> $uri_segment,
			'per_page'		=> $per_page,
		);
		
		$return['offset'] = (uri(4) * $return['per_page']) - $return['per_page'];
		if($return['offset'] < 0) $return['offset'] = 0;
		
		return $return;
	}
}

if ( ! function_exists('site_pagination'))
{
	function site_pagination($base_url, $total, $per_page = 10, $uri_segment = 3)
	{
		$return = array(
			'base_url'		=> '/'.trim($base_url, '/').'/',
			'total_rows'	=> $total,
			'uri_segment'	=> $uri_segment,
			'per_page'		=> $per_page,
			
			'first_link'	=> fa('angle-double-left mr5').' в начало',
			'last_link'		=> 'в конец '.fa('angle-double-right ml5'),
			'prev_link'		=> fa('angle-left mr5').' предыдущая',
			'next_link'		=> 'следующая '.fa('angle-right ml5'),
		);
		
		$return['offset'] = (uri($uri_segment) * $return['per_page']) - $return['per_page'];
		if($return['offset'] < 0) $return['offset'] = 0;
		
		return $return;
	}
}