//contact email generation

function drawpath( canvas, pathstr, duration, attr, callback )
{
    var guide_path = canvas.path( pathstr ).attr( { stroke: "none", fill: "none" } );
    var path = canvas.path( guide_path.getSubpath( 0, 1 ) ).attr( attr );
    var total_length = guide_path.getTotalLength( guide_path );
    var last_point = guide_path.getPointAtLength( 0 );
    var start_time = new Date().getTime();
    var interval_length = 50;
    var result = path;        

    var interval_id = setInterval( function()
    {
        var elapsed_time = new Date().getTime() - start_time;
        var this_length = elapsed_time / duration * total_length;
        var subpathstr = guide_path.getSubpath( 0, this_length );            
        attr.path = subpathstr;

        path.animate( attr, interval_length );
        if ( elapsed_time >= duration )
        {
            clearInterval( interval_id );
            if ( callback != undefined ) callback();
                guide_path.remove();
        }                                       
    }, interval_length );  
    return result;
}

function nextProcessStep($this,delay){

	$this.addClass('waiting ready');

	var $prev = $this.prev();
	var prevleft = $prev.offset().left;
	var thisleft = $this.offset().left;

	var left = prevleft + $prev.outerWidth();
	var width = thisleft - left;

	if (prevleft > thisleft){
		left = thisleft + $this.outerWidth();
	    width = prevleft - left;
	}

	var top = $prev.offset().top + ($prev.outerHeight() * 6 / 8);
	// var height = $this.outerHeight() / 2;
	var height = ($this.offset().top + $this.outerHeight() - $this.prev().offset().top - ($this.prev().outerHeight() * .9) ) / 2;

	if ($prev.hasClass('start')){
		left = prevleft;
		width = thisleft - left;
		top = $prev.offset().top + $prev.outerHeight()
		height = $this.outerHeight() / 2;
	}

	// Create a canvas from one block to the next
	var paper = Raphael(left, top, width, height);
	paper.canvas.className.baseVal="process-connections";

	var line = paper.path();

	var sequence_path;
	if ($prev.hasClass('start')){
		sequence_path =  ["M" + $prev.outerWidth()/2 + ",0", "L" + $prev.outerWidth()/2 + "," + height, "M" + $prev.outerWidth()/2 + "," +  (height-3), "L" + width + "," + (height-3) ];
	} else if (prevleft < thisleft){
		//left to right			
		sequence_path =  [ "M" + 0 + "," +  3, "L" + width/2 + "," + 3, "M" + width/2 + "," +  0, "L" + width/2 + "," +  height, "M" + width/2 + "," +  (height-3), "L" + width + "," + (height-3) ];
	} else {
		//right to left
		sequence_path =  [ "M" + width + "," +  3, "L" + width/2 + "," +  3, "M" + width/2 + "," +  0, "L" + width/2 + "," +  height, "M" + width/2 + "," +  (height-3), "L" + 0 + "," + (height-3) ];
	}

	var $next = $this.next();
	$this.css('opacity',1);

	drawpath( paper, 
		sequence_path, 
		delay, 
		{ stroke: '#fff', 'stroke-width': 5, }, 
		function()
		{
		  if ( $next.hasClass('waiting') ){
		  	setTimeout( function(){
		  		nextProcessStep($next,delay);
		  	},delay/2);
		  } else {
			$next.addClass('ready');
		  }
		} 
	);
}

$(document).ready(function(){


	var waypoints = $('.process-block').waypoint(function(direction) {
 
		var $this = $(this.element);	

		if ($this.hasClass('ready') || $this.hasClass('hi') ){
			nextProcessStep($this,500);
		} else {
			$this.addClass('waiting')
		}
		
	}, {
		offset: '75%'
	});

	$( window ).resize(function() {
		if ($('.process-block').length > 0){
			$('svg.process-connections').remove();
			nextProcessStep($('.process-block').eq(0),0);
		}
	});
	// });


	$( document ).on('click','.question h4',function(e) {
		e.preventDefault();
		$(this).parent().toggleClass('expand');
	});

});