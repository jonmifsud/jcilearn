$(document).on('click','.fa-bars, .perspective.animated .perspective-container',function(e){
	e.stopPropagation();
	e.preventDefault();
	if ( $('.perspective').toggleClass('animated').hasClass('animated') ){
		$('.perspective').css('height','100%').css('overflow-y','hidden');
		$('.perspective .perspective-container').css('height','100%').css('overflow','hidden');
	} else {		
		$(".perspective").one('transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', 
		function() {
			 $('.perspective').css('height','').css('overflow-y','visible');
			$('.perspective .perspective-container').css('height','').css('overflow','');
		});
	}
});