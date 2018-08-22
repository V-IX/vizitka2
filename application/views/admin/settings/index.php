<div class="page-preview">
	<div class="img"><?=check_img('assets/uploads/settings/'.$siteinfo['img'], array());?></div>
	<div class="descr">
		<h3 class="mb5">
			<?=$siteinfo['title'];?>
			<i class="mr10"></i>
			<? if($siteinfo['enable'] == 1) { ?>
				<span class="tooltips" data-original-title="Сайт доступен всем"><i class="fa fa-fw fa-eye text-success"></i></span>
			<? } else { ?>
				<span class="tooltips" data-original-title="Доступ к сайту ограничен"><i class="fa fa-fw fa-eye-slash text-error"></i></span>
			<? } ?>
			
		</h3>
		<h4 class="mb15 text-gray">
			
			<?=$siteinfo['descr'];?>
		</h4>
		<i class="fa fa-fw fa-user h4 mr5 text-gray"></i> <?=$siteinfo['owner'];?>
		<div class="mb5"></div>
		<i class="fa fa-fw fa-file-text-o h4 mr5 text-gray"></i> <?=$siteinfo['details'];?>
	</div>
</div>

<hr class="mb20" />

<h3 class="text-info mb15">Контакты:</h3>

<div class="form-group row">
	<div class="col-6">
		<i class="fa fa-fw fa-at h4 mr5 text-gray"></i> <?=$siteinfo['email'];?>
	</div>
	<div class="col-6">
		<i class="fa fa-fw fa-mobile h4 mr5 text-gray"></i> <?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?>
	</div>
</div>
<div class="form-group row">
	<div class="col-6">
		<i class="fa fa-fw fa-mobile h4 mr5 text-gray"></i>
		<?=($siteinfo['phone2'] != '') ? phone($siteinfo['phone2'], $siteinfo['phone2Mask']) : '<span class="text-gray">(пусто)</span>';?>
	</div>
	<div class="col-6">
		<i class="fa fa-fw fa-phone-square h4 mr5 text-gray"></i>
		<?=($siteinfo['phoneCity'] != '') ? phone($siteinfo['phoneCity'], $siteinfo['phoneCityMask']) : '<span class="text-gray">(пусто)</span>';?>
	</div>
</div>
<div class="form-group row">
	<div class="col-6">
		<i class="fa fa-fw fa-skype h4 mr5 text-gray"></i>
		<?=($siteinfo['skype'] != '') ? $siteinfo['skype'] : '<span class="text-gray">(пусто)</span>';?>
	</div>
</div>
<div class="form-group">
	<i class="fa fa-fw fa-map-marker h4 mr5 text-gray"></i>
	<?=($siteinfo['adres'] != '') ? $siteinfo['adres'] : '<span class="text-gray">(пусто)</span>';?>
</div>

<hr class="mb20" />

<h3 class="text-info mb15">SEO:</h3>

<div class="form-group">
	<i class="fa fa-fw fa-bullhorn h4 mr5 text-gray"></i>
	<?=($siteinfo['mTitle'] != '') ? $siteinfo['mTitle'] : '<span class="text-gray">(пусто)</span>';?>
</div>
<div class="form-group">
	<i class="fa fa-fw fa-tag h4 mr5 text-gray"></i>
	<?=($siteinfo['mKeywords'] != '') ? $siteinfo['mKeywords'] : '<span class="text-gray">(пусто)</span>';?>
</div>
<div class="form-group">
	<i class="fa fa-fw fa-tags h4 mr5 text-gray"></i>
	<?=($siteinfo['mDescription'] != '') ? $siteinfo['mDescription'] : '<span class="text-gray">(пусто)</span>';?>
</div>

<hr class="mb20" />

<h3 class="text-info mb15">Заглушка:</h3>

<div class="form-group">
	<? if($siteinfo['enable'] == 1) { ?>
		<i class="fa fa-fw fa-eye h4 mr5 text-gray"></i> Сайт доступен всем
	<? } else { ?>
		<i class="fa fa-fw fa-eye-slash h4 mr5 text-gray"></i> Доступ к сайту ограничен
	<? } ?>
</div>
<div class="form-group">
	<i class="fa fa-fw fa-bullhorn h4 mr5 text-gray"></i>
	<?=($siteinfo['capTitle'] != '') ? $siteinfo['capTitle'] : 'Сайт временно закрыт';?>
</div>
<div class="form-group">
	<i class="fa fa-fw fa-align-left h4 mr5 text-gray"></i>
	<?=($siteinfo['capDescr'] != '') ? $siteinfo['capDescr'] : 'Приносим свои извинения и гарантируем в скором времени наладить работу';?>
</div>

<div class="form-actions">
	<?=anchor('admin/'.uri(2).'/edit', 'Изменить настройки', array('class' => 'btn btn-success'));?>
	<?=anchor('admin', 'Вернуться на главную', array('class' => 'btn'));?>
</div>