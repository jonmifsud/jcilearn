;(function($){
	$(document).on('click','.faq-item .question',function(e){
		$(this).next().slideToggle();
	});
})(jQuery);