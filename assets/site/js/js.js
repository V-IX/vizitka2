$(document).ready(function(){
	$('.tmenu .item').hover(function(){
		el = $(this);
		sub = el.find('.submenu');
		sub.show().animate({'opacity': 1, 'margin-top': 0}, 300);
	}, function(){
		el = $(this);
		sub = el.find('.submenu');
		sub.hide().css({'opacity': 0, 'margin-top': 10});
	});
});