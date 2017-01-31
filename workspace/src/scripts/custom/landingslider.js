 $(document).ready(function(){

        $(".sliderJquery div:nth-child("+1+")").show();
        $(".study-timeline-progress > div:nth-child("+1+")").css({"background-color": "#3496DA", "color": "white"});
        $(".sliderJquery div:nth-child("+2+")").hide();
        $(".sliderJquery div:nth-child("+3+")").hide();
        
        $("#counter").bind("click", counterfunc);
        var counter = 1;
        divNumber = $(".sliderJquery > div").length;


        function counterfunc(){
            if(counter<divNumber){ 
                var sum = counter + 1;
                $("#output").html(sum);
                counter=sum;

                $(".sliderJquery > div").hide();                
                $(".sliderJquery div:nth-child("+counter+")").show();

                $(".study-timeline-progress > div:nth-child("+counter+")").css({"background-color": "#3496DA", "color": "white"});

            }else{
                counter = 0; 
                $(".study-timeline-progress > div").css({"background-color": "white", "color": "#3496DA"});
                $(".sliderJquery div:nth-child(1)").show();
            }           
        }
    });

 $(document).ready(function(){
    
        $(".hide-div").toggle();

});


$(document).ready(function(){
    $("#show-div-landing").click(function(){
        $(".hide-div").show();
        $("#landingTemplateSlider").hide();
    });
});

