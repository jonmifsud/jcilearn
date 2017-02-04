function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

	function parseFieldNames($this,data) {

		var name = $this.attr('name');

		if(typeof(name) == 'undefined' || name == ""){
			return;
		}

		var actualName = 'fields[' + name + ']';

		if (name.indexOf('[') > -1){
			var parts =  name.split('[');
			var firstPart = parts.shift();
			actualName = 'fields[' + firstPart + '][' + parts.join('[');
			if (actualName.substr(actualName.length-1) !== ']') {
				actualName += ']';
			}
		}

		if ($this.attr('type') == 'checkbox' || $this.attr('type') == 'radio') {
			if ($this.is(':checked')) {
				console.log(actualName);
				if (actualName.substr(actualName.length-2) == '[]') {

					actualName = actualName.substr(0,actualName.length-2);

					//set a data attribute with an index value
					var index = $this.closest('form').data('form-'+actualName);
					if (typeof(index) == 'undefined'){
						index = 0;
					}
					$this.closest('form').data('form-'+actualName,index +1);

					actualName = actualName + '['+index+']';

					// if(!data[actualName]) {
						data[actualName] = $this.val();
					// } else {
					// 	data[actualName] += ' | ' + $this.val();
					// }

				} else {
					// data[actualName] = 'on';
				}
			} else {
				// data[actualName] = ''; 
			}
		} else if (name.substr(name.length-2) == '[]') {

			actualName = name.substr(0,name.length-2);

			//set a data attribute with an index value
			var index = $this.closest('form').data('form-'+actualName);
			if (typeof(index) == 'undefined'){
				index = 0;
			}
			$this.closest('form').data('form-'+actualName,index +1);

			actualName = 'fields[' + actualName + ']['+index+']';

			data[actualName] = $this.val();
		} else {
			data[actualName] = $this.val()
		}

		//return data;

	};

(function ($) {
	$(document).ready(function(){

		$(document).on('click','.submit',function(){
			$(this).closest('form').submit();
		})

		// Init validation for each form
		$('form:not(.novalidate)').each(function() {
			$(this).validate({
				onsubmit:true,
				// debug: true,
				
				submitHandler : function(form) {

					var $form = $(form)
					var action = 'action[' + $form.data('action') + ']'

					var data = {}

					data[action] = true

					var id = $form.data('id');

					if (isNumber(id)){
						data['id']=id;
					}

					$($form.data()).each(function(index,value){
						if ( typeof(value) == 'string' && value.substr(4) == 'form' ){
							$form.data(value,0);
						}
					});

					$form.find('input, select, textarea').each(function(){
						parseFieldNames( $(this),data);
					});

					$form.find('.form-success, .form-error').slideUp()

					var submitBtn = $form.find('.submit-btn').attr("disabled", "disabled") //add loader here if necessary

					// var loader = submitBtn.siblings('.loader').show('fast')
					
					$.post('/jcilearn/ajax/', data, function(response) {

						$response = $(response)

						submitBtn.removeAttr("disabled")

						// loader.hide('fast', function() { loader.remove() })

						if ($response.find($form.data('action') + '[result], ' +$form.data('action') + " entry[result]").attr('result') == 'success') {

							if ($response.find($form.data('action')).attr('paypal-link')){
								window.location = $response.find($form.data('action')).attr('paypal-link')
							}

							$form.trigger('ajaxSaved', [$response,true]);

							// form.reset()
							$form.find('.control-group').removeClass('error success info')
							$form.find('.form-success').stop().slideDown();
							$form.find('.submit-btn, .submit').slideUp();
							$('.declaration').slideUp();
							//TODO goal event submission
						} else {
							$form.find('.form-error').stop().slideDown();


							$form.trigger('ajaxSaved', [$response,false]);
						}
					
						return false

					}, 'xml')

					return
				}
			})
		});
	});
}(jQuery));