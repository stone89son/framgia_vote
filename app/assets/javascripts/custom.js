$(document).ready(function(){
	var getPopup = $('.get-popup');
	var to = getPopup.attr('href');
	var body = $('.body');
	var overlay = $('.overlay');
	var popUp = $('.popup-box');

	function removePopup(){
		overlay.removeClass('visible');
		popUp.removeClass('visible');
	}
	
	getPopup.on('click', function(){
		removePopup();

		var $this = $(this);
		var to = $this.attr('href');

		overlay.addClass('visible');
		jQuery(to).addClass('visible');
	});

	overlay.on('click', function(){
		removePopup();
	});
});