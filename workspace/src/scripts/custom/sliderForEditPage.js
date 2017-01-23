$(document).ready(function(){

        
        $(".counter1").bind("click", counterfunc);
        var counter = 0;
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