$(document).ready(function(){
    $("#toggle-project").click(function(){
        $("#panel").toggle();
    });
});

$(document).ready(function(){
	$("#text-toggle").hide();
    $("#comment-toggle").click(function(){
        $("#text-toggle").toggle(1000);
    });
});


$(document).ready(function(){
	$("#show-more-comments").hide();
	$("#show-less").hide();
    $(".more-comments").click(function(){
    	$("#hide-more-comments").toggle();
        $("#show-more-comments").toggle();
        $("#show-more").toggle();
        $("#show-less").toggle();
    });
});