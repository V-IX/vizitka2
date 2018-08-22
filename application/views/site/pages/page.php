<?=$this->breadcrumbs->create_links();?>

<div class="page">
	<div class="wrapper">
		<div class="row">
			<div class="col-4">
				<h1 class="page-title _lined"><?=$item['title'];?></h1>
			</div>
			<div class="col-8">
				<div class="text-editor mb20"><?=$item['text'];?></div>
				<?=anchor('', 'На главную', array('class' => 'medium'));?>
			</div>
		</div>
	</div>
</div>