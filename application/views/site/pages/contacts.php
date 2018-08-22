<?=$this->breadcrumbs->create_links();?>

<div class="page">
	<div class="wrapper">
		<div class="page-content">
			<div class="map mb30">
				<?=htmlspecialchars_decode($siteinfo['map']);?>
			</div>
			<div class="row">
				<div class="col-5 top">
					<div class="uppercase h4 bold mb15"><?=$pageinfo['title'];?></div>
					<div class="text-dark text-editor">
						<div class="mb10">По всем вопросам, связанными с работой центра,<br/>а также партнёрам обращаться по телефонам:</div>
						<div class="mb20">
							MTC: <?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?><br/>
							<? if($siteinfo['phone2']) { ?>Velcom: <?=phone($siteinfo['phone2'], $siteinfo['phone2Mask']);?><br/><? } ?>
							<? if($siteinfo['phoneCity']) { ?>Городской: <?=phone($siteinfo['phoneCity'], $siteinfo['phoneCityMask']);?><br/><? } ?>
							e-mail: <?=$siteinfo['email'];?>
							<? if($siteinfo['skype']) { ?><br/>skype: <?=$siteinfo['skype'];?><? } ?>
						</div>
						<div class="">
							<?=$siteinfo['title'];?><br/>
							<?=$siteinfo['adres'];?>
						</div>
					</div>
				</div>
				<div class="col-7 bottom">
					<div class="uppercase h4 bold mb15">Остались вопросы?</div>
					<?=form_open('contacts/ajaxSend', array('data-toggle' => 'ajaxForm', 'class' => 'contacts-form'));?>
						<div class="form-group row mb10">
							<div class="col-6"><input type="text" name="name" class="form-input" placeholder="Представьтесь, пожалуйста" /></div>
							<div class="col-6"><input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" /></div>
						</div>
						<div class="row mb10">
							<div class="col-12"><textarea name="text" class="form-input" rows="3" placeholder="Ваш вопрос"></textarea></div>
						</div>
						<input type="hidden" name="title" value="Заказать звонок - контакы" />
						<button class="btn">Заказать звонок</button>
					<?=form_close();?>
				</div>
			</div>
		</div>
	</div>
</div>