$(function($){
	
	$(document).on('click','.all-clickable',function(e){
		e.stopPropagation();
		e.preventDefault();
		//send click to href code - important to add tracking if required
		window.location = $(this).find('a').attr('href');
	});

},(jQuery));