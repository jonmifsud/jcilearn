
$(document).ready(function(){
	$("#webticker-update-example,#news-webticker,#finance-webticker").webTicker({height:'75px'});
	$("#webticker-stop-continue-example").webTicker({height:'75px', duplicate:true, rssfrequency:0, startEmpty:false, hoverpause:false, transition: "ease"});	
	$("#webticker-transition-ease").webTicker({height:'75px'}); //need rss
	$("#right-to-left-webticker").webTicker({height:'75px', direction: 'right'});
	$("#images-webticker").webTicker({height:'150px'});

	// $("#stop-newsticker1").click(function(){
	// 	$("#news-webticker").webTicker('stop');
	// });
	
	// $("#continue-newsticker1").click(function(){
	// 	$("#news-webticker").webTicker('cont');
	// });

	$("#update-newsticker1").click(function(){
		$("#webticker-update-example").webTicker('update','<li data-update="item1">Web Ticker v3.0.0 has just been released! And the documentation has become even better!</li> <li data-update="item2">The Web Ticker v3.0.0 commercial license no longer binds you to make your projects open source.</li> <li data-update="item3">An OEM License is also available if your would like to make the WebTicker part of your website builder</li><li data-update="item4">Maze Digital will now be commercially supporting the Web Ticker</li>','swap',true,false);
	});

	$("#ease-financeticker").click(function(){
		$("#webticker-transition-ease").webTicker('transition', 'ease');
	});

	$("#linear-financeticker").click(function(){
		$("#webticker-transition-ease").webTicker('transition', 'linear');
	});


	$("#stop-newsticker2").click(function(){
		$("#webticker-stop-continue-example").webTicker('stop');
	});
	
	$("#continue-newsticker2").click(function(){
		$("#webticker-stop-continue-example").webTicker('cont');
	});

	var waypoints = $('body.webticker .html-content').waypoint(function(direction) {
 
		var $menu = $('.menu-items');
		if (direction == 'down'){
			var left = $menu.offset().left;
			$menu.css('position','fixed').css('top','100px').css('left',left + 'px'); //menu fixed
		} else {
			$menu.css('position','relative').css('top','').css('left','');
		}
		
	}, {
		offset: '100px;'
	});

	var waypoints = $('body.webticker .perspective-container footer').waypoint(function(direction) {

		var $this = $(this.element);

		var $menu = $('.menu-items');
		if (direction == 'down'){
			var left = $menu.offset().left;
			var bottom = $this.outerHeight() + 100;
			$menu.css('position','absolute').css('top','').css('bottom', bottom + 'px').css('left',left + 'px');
		} else {
			var left = $menu.offset().left;
			$menu.css('position','fixed').css('top','100px').css('bottom','').css('left',left + 'px');
		}
		
	}, {
		offset: function(){
			return $('.menu-items').outerHeight() + 200;
		}
	});
});