$(document).ready(function(){


        $(document).on('click','#like', function(e){
            // var sum = like+1;
            // $("#likeOutput").html(sum);
            // like=sum;


            data = {
                "field-id" : "303",
                "entry-id" : $(this).data('entry'),
                "action[member-claim]" : "1",
            }

            //$.post( "test.php", data, function( result ) {

            $.post( "http://localhost/jcilearn/ajax/", data, function( result ) {
              console.log( result ); // John
              console.log("certain text to be showed"); //random testing Text
            });
        });

        $("#view").bind("click", increaseViewCounter);
        var view = 0;

        function increaseViewCounter(){
            var sum = view+1;
            $("#viewOutput").html(sum);
            view=sum;
        }

        $("#editPageButton").bind("click", editPageSlider);
        var counter = 0;
        divNumber = $(".containerForEditPage > div").length;

        function editPageSlider(){
            if(counter<divNumber){
                var sum = counter + 1;
                counter=sum;

                $(".containerForEditPage > div").hide();                
                $(".containerForEditPage div:nth-child("+counter+")").show();

            }else
                counter = 0;           
        }

    });