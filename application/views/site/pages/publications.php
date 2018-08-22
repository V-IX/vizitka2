<?=$this->breadcrumbs->create_links();?>

<div class="page">
	<div class="wrapper">
		<div class="row">
			<div class="col-4">
				<h1 class="page-title _lined"><?=$pageinfo['title'];?></h1>
				<div class="page-descr"><?=$pageinfo['brief']?></div>
			</div>
			<div class="col-8">
				<ul class="publications-list">
				<? foreach($items as $item) { ?>
					<li>
						<a href="<?=base_url('publications/'.$item['alias']);?>" class="publications-item">
							<? if($item['img'] != '' and $siteinfo['showImg'] == 1) { ?><div class="img"><?=img(array('src' => 'assets/uploads/publications/thumb/'.$item['img'], 'alt' => $item['mTitle']))?></div><? } ?>
							<div class="title"><?=$item['title'];?></div>
							<div class="brief"><?=$item['brief'];?></div>
						</a>
					</li>
				<? } ?>
				</ul>
				<?=$this->pagination->create_links();?>
				<? if($pageinfo['text'] != '') { ?><div class="mt50 text-editor"><?=$pageinfo['text'];?></div><? } ?>
			</div>
		</div>
	</div>
</div>