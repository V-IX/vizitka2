<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title><?=$seo['title'];?></title>
	<meta name="keywords" content="<?=$seo['keywords'];?>" />
	<meta name="description" content="<?=$seo['description'];?>" />
	<meta name="viewport" content="width=1000" />
	
	<?=link_tag('assets/plugins/font-awesome/css/font-awesome.min.css');?>
	<?=link_tag('assets/plugins/font-ptsans/font.css');?>
	<?=link_tag('assets/plugins/font-ptsanscaption/font.css');?>
	<?=link_tag('assets/site/css/reset.css');?>
	<?=link_tag('assets/site/css/template.css');?>
	<?=link_tag('assets/site/css/content.css');?>
	
	<?=link_tag('favicon.ico', 'shortcut icon', 'image/ico');?>
	<?=link_tag('favicon.ico', 'shortcut', 'image/ico');?>
	
</head>
<body class="cap">
	<div class="cap-form">
		<div class="top">
			<h1><?=$siteinfo['title'];?></h1>
		</div>
		<hr/>
		<div class="bottom">
			<div class="title"><?=$siteinfo['capTitle'];?></div>
			<div class="text"><?=$siteinfo['capDescr'];?></div>
		</div>
	</div>
</body>
</html>