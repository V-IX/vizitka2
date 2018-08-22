<div class="colors-select">
	<a href="javascript:void(0)" class="colors-select-toggle"><?=fa('paint-brush');?></a>
	<div class="colors-select-panel">
		<ul class="colors-select-list clearfix">
			<li><a href="javascript:void(0)" data-color="azure" class="_azure current"></a></li>
			<li><a href="javascript:void(0)" data-color="blue" class="_blue"></a></li>
			<li><a href="javascript:void(0)" data-color="red" class="_red"></a></li>
			<li><a href="javascript:void(0)" data-color="green" class="_green"></a></li>
			<li><a href="javascript:void(0)" data-color="orange" class="_orange"></a></li>
		</ul>
	</div>
</div>

<script>
	$('[data-color]').click(function(){
		el = $(this);
		if(!el.hasClass('current'))
		{
			color = $(this).attr('data-color');
			link = base_url + 'assets/site/colors/' + color + '.css';
			$('#colorCss').attr('href', link);
			$('[data-color]').removeClass('current')
			el.addClass('current');
		}
	});
	
	$('.colors-select-toggle').click(function(){
		el = $(this).closest('.colors-select');
		if(el.hasClass('_open')) el.removeClass('_open');
		else el.addClass('_open');
	});
</script>