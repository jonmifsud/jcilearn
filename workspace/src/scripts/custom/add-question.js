
(function ($) {

	$(document).on('click','.add-question',function(){
		var newQuestion = $('.quiz-form-template .question-wrapper').clone();

		var questionNumber = $('.question-wrapper').length;

		jQuery.each(newQuestion.find('input'),function(){
			//replace "template" with question number
			var name = $(this).attr('name').replace("template",questionNumber);
			$(this).attr('name',name);
		});

		newQuestion.insertBefore('.quiz-form-template');
	})

}(jQuery));