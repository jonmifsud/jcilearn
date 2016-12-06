$(document).ready(function(){
	var viewedHomeAnimation = false;
	if (typeof(Storage) !== "undefined") {
		var viewedHomeAnimation = localStorage.getItem("viewedHomeAnimation");
		// Code for localStorage/sessionStorage.
	}
	if ($('body').hasClass('home') && !viewedHomeAnimation){ //and first load?

		if (typeof(Storage) !== "undefined") {
			localStorage.setItem("viewedHomeAnimation", true);
			// Code for localStorage/sessionStorage.
		}

		$('.sticky-header').addClass('play-intro');
		$('.home-banners .intro').css('display','block');
		$('.animated-banners').css('display','none');
		
		window.setTimeout(function(){
			$('#maze-home-landing g').each(function(){
				var rand = Math.floor((Math.random() * 2500) + 1);
				var $this = $(this);
				window.setTimeout(function(){
					$this.attr('class','fade-out');
				}, rand, $this);
			}); 
		}, 1000);

		window.setTimeout(function(){
			// $('.logo').clone().addClass('intro-logo');
			$('.landing-title').css('margin-top',$('#maze-logo')[0].getBoundingClientRect().height/2);
			$('.landing-title').css('opacity','0.6');

		}, 3500);

		window.setTimeout(function(){

			//put the logo back in place
			// $('.logo').removeClass('intro-logo');
			// $('.logo a').css('margin-top',0);
			$('.landing-title').css('opacity','0');
			window.setTimeout(function(){
				$('.landing-title').css('display','none');
				$('.sticky-header').removeClass('play-intro');
				$('#maze-home-landing').css('opacity','0');
				window.setTimeout(function(){
					$('.home-banners .intro').css('display','none');
					$('.animated-banners').css('display','block');
				},500);
			},500);


			logoWidth = $('#maze-logo')[0].getBoundingClientRect().width;//$('#maze-home-landing').width();
			var ratio = 19 / logoWidth;

			var logoPos = $('.sticky-header .logo').position();
			var landingPos = $('#maze-home-landing').position();
			var leftDiff = landingPos.left - logoPos.left;
			var topDiff = landingPos.top - logoPos.top;

			var svgWidth = $('#maze-home-landing').width() * ratio;

			// $('#maze-home-landing').css('transform','scale('+ ratio +')');
			var left = $('#maze-logo')[0].getBoundingClientRect().left;// - leftDiff; // there should be a fixed offset of the real icon
			// var top = $('#maze-logo')[0].getBoundingClientRect().top;// - topDiff; // there should be a fixed offset of the real icon
			var top = 0; // do not offset as top is always same position without a translate


			$('#maze-home-landing').css('left',logoPos.left + 10);
			$('#maze-home-landing').css('top','30px');//topDiff - (top * ratio));

			// $('#maze-home-landing').css('margin-left',-leftDiff);
			// $('#maze-home-landing').css('margin-top','-53px');//topDiff - (top * ratio));

			$('#maze-home-landing').css('transform','scale('+ ratio +')' + ' translate(-'+left+'px,-'+top+'px)');

			// $('#maze-logo').attr('fill','url(#maze-gradient)');

			setHomeTyped();

		}, 5500);
	} else {
		setHomeTyped();
	}
}); 

function setHomeTyped(){
	//should use local storage and variation of texts somewhere
	if ($('body').hasClass('home')){
		// $('.solution-intro,.solution-keyword').text('');
		$(".frustration-keyword").typed({
			strings: ["Overwhelming", "Frustrating", "Confusing", "Hard"],
			typeSpeed: 100,
			backSpeed: 50,
			backDelay: 700,
			callback: function() {
				$('.typed-cursor').hide();
				$('#primary-cta').addClass('active-top-arrow');
			},
			/*callback: function() {
				$('.typed-cursor').hide();
				$(".solution-intro").typed({
					strings: ["sounds familiar? ", "sounds familiar? let us build your website", "sounds familiar? let us help you market yourself", "sounds familiar? let us help you streamline your business", "sounds familiar? let us help you grow your business"],
					typeSpeed: 50,
					backSpeed: 20,
					backDelay: 700,
					callback: function() {
						$('.typed-cursor').hide();
						$('#primary-cta').addClass('active-top-arrow');
					},
					preBackaspace: function(arrayPos){
						if (arrayPos == 0){
							return 17;
						} else if (arrayPos == 1){
							return 24;
						} else {
							return 33;
						}
					}
				});
			}*/
		});
	}
}