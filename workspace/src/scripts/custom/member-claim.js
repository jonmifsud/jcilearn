;(function($){

	$(document).on('click','.js-like-action',function(){

		var $this = $(this);
		
		var data = {	
			"action[member-claim]":1,
			"field-id": $this.data('field'),
			"entry-id": $this.data('entry')
		};

		var count = parseInt($this.find(".count").text());

		if ($this.data('current')=="Yes"){
			$this.find(".count").text(count-1);
			$this.data('current','No');
		} else {
			$this.find(".count").text(count+1);
			$this.data('current','Yes');
		}

		$(this).find('.fa').toggleClass("fa-heart fa-heart-o");


		$.post('/ajax/', data, function(response) {

			$response = $(response);

			if ($response.find( 'member-claim[result], member-claim entry[result]').attr('result') == 'success') {

				$this.trigger('member-action-completed', [$response,true]);

				//TODO goal event submission
			} else {

				$this.trigger('member-action-completed', [$response,false]);
			}
		
			return false

		}, 'xml')

	});


	$(document).on('click','.js-enrol-action',function(){

		var $this = $(this);
		
		var data = {	
			"action[member-claim]":1,
			"field-id": $this.data('field'),
			"entry-id": $this.data('entry')
		};

		var count = parseInt($this.find(".count").text());

		$this.toggleClass('disabled');

		$.post('/ajax/', data, function(response) {

			$response = $(response);

			if ($response.find( 'member-claim[result], member-claim entry[result]').attr('result') == 'success') {

				$this.trigger('member-action-completed', [$response,true]);

				// 

				//TODO goal event submission
			} else {

				$this.trigger('member-action-completed', [$response,false]);
			}
		
			return false

		}, 'xml')

	});


	$(document).on('click','.js-submit-quiz',function(e){
		e.preventDefault();

		var $this = $(this);
		var $quiz = $this.closest('.quiz-result-container');

		$quiz.find('input').removeClass('correct incorrect');

		var correctAnswerCount = 0;

		// check answer correctness
		$quiz.find('input:checked').each(function(){
			if ($(this).data('correct')){
				$(this).addClass('correct');
				correctAnswerCount++;
			} else {
				$(this).addClass('incorrect');
			}
		});

		var correct = correctAnswerCount === $quiz.find('.question-wrapper').length;

		if ( correct ){

			if ($this.data('current') == "No"){
				// only mark completed if not already completed by this user
				var data = {
					"action[member-claim]":1,
					"field-id": $this.data('field'),
					"entry-id": $this.data('entry')
				};

				var count = parseInt($this.find(".count").text());

				$this.toggleClass('disabled');

				$.post('/ajax/', data, function(response) {

					$response = $(response);

					if ($response.find( 'member-claim[result], member-claim entry[result]').attr('result') == 'success') {

						$this.trigger('member-action-completed', [$response,true]);

						// 

						//TODO goal event submission
					} else {

						$this.trigger('member-action-completed', [$response,false]);
					}
				
					return false

				}, 'xml');
			}

		} else {
			// do not pass if not correct for now
		}



	});



})(jQuery);