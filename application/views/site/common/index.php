<div class="offer">
	<div class="wrapper">
		<div class="side">
			<? if($siteinfo['offerTitle'] != '') { ?><h1 class="title"><?=nl2br($siteinfo['offerTitle']);?></h1><? } ?>
			<? if($siteinfo['offerTitle'] != '') { ?><div class="text"><?=nl2br($siteinfo['offerText']);?></div><? } ?>
			<a href="javascript:void(0)" class="btn" data-toggle="popup" data-task="Заказать звонок - оффер">Получить консультацию</a>
		</div>
	</div>
</div>
<div class="home mt40">
	<div class="wrapper">
		<div class="row">
		<? $advs = json_decode($siteinfo['offerAdv'], true); $advs = is_array($advs) ? $advs : array();?>
			<div class="col-<?=!empty($advs) ? 7 : 12;?>">
				<div class="page-title mb30"><?=$pageinfo['title'];?></div>
				<div class="text-editor"><?=$pageinfo['text'];?></div>
			</div>
			<? if(!empty($advs)) { ?>
			<div class="col-1"></div>
			<div class="col-4">
				<div class="page-title mb30">Наши преимущества</div>
				<ul class="home-list">
				<? foreach($advs as $adv) { ?>
					<li><?=$adv;?></li>
				<? } ?>
				</ul>
			</div>
			<? } ?>
		</div>
		<? if(!empty($advs)) { ?><hr class="home-sep" /><? } ?>
	</div>
</div>