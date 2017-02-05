$(document).ready(function(){


        // $(".study-timeline-progress > div:nth-child("+1+")").css({"background-color": "#3496DA", "color": "white"});    
        // $(".sliderJquery > div").hide();

        // $(".sliderJquery > div:nth-child("+1+")").show();

        
        $(".counter1").bind("click", counterfunc);
        var counter = 1;
        divNumber = $(".sliderJquery > div").length;

        $(".sliderJquery > div:nth-child(1)").show();


        function counterfunc(){

            if(counter < divNumber){ 
                counter++;
                $("#output").html(counter);

                $(".sliderJquery > div").hide();
                $(".sliderJquery > div:nth-child("+counter+")").show();


                $(".study-timeline-progress-circles:nth-child("+(counter-1)+")").addClass('completed-lesson'); 

                // $(".study-timeline-progress > div:nth-child("+counter+")").css({"background-color": "#3496DA", "color": "white"});

            }else{
                counter = 1; 
                // $(".study-timeline-progress > div").css({"background-color": "white", "color": "#3496DA"});

                $(".sliderJquery > div").hide();
                $(".sliderJquery > div:nth-child(1)").show();
                $(".study-timeline-progress-circles").removeClass('completed-lesson');
            }           
        }
    });