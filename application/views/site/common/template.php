<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title><?=$seo['title'];?></title>
	<meta name="keywords" content="<?=$seo['keywords'];?>" />
	<meta name="description" content="<?=$seo['description'];?>" />
	<meta name="viewport" content="width=1000" />
	
	<?=link_tag('assets/plugins/font-awesome/css/font-awesome.min.css');?>
	<?=link_tag('assets/plugins/font-ubuntu/font.css');?>
	<?=link_tag('assets/site/css/reset.css');?>
	<?=link_tag('assets/site/css/template.css');?>
	<?=link_tag('assets/site/css/content.css');?>
	<?=link_tag(array('href' => 'assets/site/colors/azure.css', 'rel' => 'stylesheet', 'type' => 'text/css', 'id' => 'colorCss'));?>
	
	<?=link_tag('favicon.ico', 'shortcut icon', 'image/ico');?>
	<?=link_tag('favicon.ico', 'shortcut', 'image/ico');?>
	
	<?=script('assets/plugins/jquery/jquery-1.9.1.min.js');?>
	<?=script('assets/plugins/jquery.mask/jquery.maskedinput.js');?>
	<?=script('assets/plugins/bpopup/jquery.bpopup.min.js');?>
	<?=script('assets/plugins/ajaxForm/form.js');?>
	<?=script('assets/site/js/js.js');?>
	
	<? $csrf = $this->security->get_csrf_hash();?>
	<script>
		base_url = "<?=base_url()?>"
		csrf_test_name = "<?=$csrf;?>"
	</script>
	
</head>
<body>
<? $this->load->view('site/common/colors');?>
<div class="super-wrapper">
<div class="header">
	<div class="wrapper">
		<div class="left">
		<a href="<?=base_url();?>" class="logo-wrap left">
			<?=img(array('src' => 'assets/uploads/settings/'.$siteinfo['img'], 'alt' => $siteinfo['mTitle'], 'class' => 'logo'));?>
			<div class="logo-descr">
				<div class="logo-title"><?=$siteinfo['title'];?></div>
				<?=$siteinfo['descr'];?>
			</div>
		</a>
		</div>
		<div class="right mt35">
			<a href="javascript:void(0)" class="header-open" data-toggle="popup" data-task="Заказать звонок - шапка">
				<?=fa('phone mr5');?>
				<span>Заказать звонок</span>
			</a>
		</div>
		<div class="header-contacts">
			<ul class="header-phones">
				<li class="phone _mts"><?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?></li>
				<li class="phone _velcom"><?=phone($siteinfo['phone2'], $siteinfo['phone2Mask']);?></li>
			</ul>
			<div class="header-adres">
				Где мы? <span class="ml5"><?=$siteinfo['adres'];?></span>
			</div>
		</div>
	</div>
</div>
<div class="tmenu-wrap">
	<div class="wrapper">
		<div class="tmenu">
			<ul>
			<? foreach($tmenu as $_tmenu) { ?>
				<li>
					<div class="item">
						<a href="<?=base_url($_tmenu['link']);?>"><?=$_tmenu['title'];?></a>
						<? if(!empty($_tmenu['child'])) { ?>
							<ul class="submenu">
							<? foreach($_tmenu['child'] as $_tchild) { ?>
								<li><?=anchor($_tchild['link'], $_tchild['title'], array('target' => $_tchild['target']));?></li>
							<? } ?>
							</ul>
						<? } ?>
					</div>
				</li>
			<? } ?>
			</ul>
		</div>
	</div>
</div>
<div class="content">
	<? $this->load->view('site/'.$view); ?>
</div> <!-- // content -->
</div> <!-- // super-wrapper -->
<div class="footer-wrapper">
	<div class="footer">
		<div class="wrapper">
			<div class="row">
				<div class="col-4">
					<div class="copyright">
						<?=date('Y');?> &copy; <?=$siteinfo['title'];?><br/>
						<a href="<?=base_url('pages/confidence');?>">Политика конфиденциальности</a>
					</div>
				</div>
				<div class="col-4">
					<div class="footer-adres">
						<div class="mb5"><?=$siteinfo['adres'];?></div>
						<div class="mb5">
							Тел:
							<?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?>,
							<?=$siteinfo['phone2'] ? phone($siteinfo['phone2'], $siteinfo['phone2Mask']) : null;?>
						</div>
						<div><a href="javascript:void(0)"><?=$siteinfo['email'];?></a></div>
					</div>
				</div>
				<div class="col-4 text-right">
					<a href="http://narisuemvse.by" target="_blank" class="developer">Разработка и продвижение<br/><span class="link">Narisuemvse.by</span></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="popup" id="feedback">
	<div class="close"></div>
	<div class="h3 bold mb5">Заказать звонок</div>
	<div class="h5 mb15">Оставьте заявку и наши специалисты свяжутся с Вами!</div>
	<?=form_open(base_url('contacts/ajaxSend', null, true), array('data-toggle' => 'ajaxForm', 'class' => 'form'));?>
		<div class="form-group mb5">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя" />
		</div>
		<div class="form-group mb10">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" />
		</div>
		<input type="hidden" name="title" id="popupTask" value="Обратная связь" />
		<button class="btn btn-big wide">Оставить заявку</button>
	<?=form_close();?>
</div>
<div class="popup w325" id="thanks">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за заявку!</div>
	<div class="h5">Наши специалисты свяжутся<br/>с Вами в ближайшее время!</div>
</div>


</body>
</html>