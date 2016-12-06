//contact email generation

$(document).ready(function(){
	if ($('a.email').length > 0){
		$('a.email').each(function(){
			$(this).append('@maze.digital');
			$(this).attr('href','mailto:' + $(this).text());
		})
	}
}); 

/** SELECTBOX START */

$(document).on('click','.selectbox',function(){
	$this = $(this);

	$this.toggleClass('active');
})

$(document).on('mouseenter','.selectbox',function(){
	$this = $(this);

	$this.addClass('active');
})

$(document).on('mouseleave','.selectbox',function(){
	$this = $(this);

	$this.removeClass('active');
})

$(document).on('click','.selectbox .option',function(){
	$this = $(this);

	$placeholder = $this.closest('.selectbox').find('.placeholder');
	$placeholder.text($this.text());
	$placeholder.data('value',$this.data('value'));
})
/** SELECTBOX END */


$(document).on('click','.form-container .submit, .submit-project',function(e){
	e.preventDefault();
	$this = $(this);

	$this.closest('form').submit();
})

$(document).ready(function(){
	// Init validation for each form
	$('form:not(.novalidate)').each(function() {
		$(this).validate({
			onsubmit:true,
/*
			showErrors: function(errorMap, errorList) {
				var i, elements;

				for ( i = 0; this.errorList[i]; i++ ) {
					var error = this.errorList[i]
					if ( this.settings.highlight ) {
						this.settings.highlight.call( this, $(error.element).closest('.control-group'), this.settings.errorClass, 'success' )
					}                
				}
				
				if( this.errorList.length ) {
					this.toShow = this.toShow.add( this.containers )
				}
				if (this.settings.success) {
					for ( i = 0; this.successList[i]; i++ ) {
						this.showLabel( this.successList[i] )
					}
				}
				if (this.settings.unhighlight) {
					for ( i = 0, elements = this.validElements(); elements[i]; i++ ) {
						var j = jQuery(elements[i])
						
						if (j.hasClass('ignore')) {
							continue
						}

						this.settings.unhighlight.call( this,$(elements[i]).closest('.control-group'), this.settings.errorClass, 'success' )
				
					}
				}
				this.toHide = this.toHide.not( this.toShow )
				this.hideErrors()
				this.addWrapper( this.toShow ).show()
			},
*/
			submitHandler : function(form) {

				var $form = $(form)
				var action = 'action[' + $form.data('action') + ']'

				var data = {}

				data[action] = true

				$form.find('input,select,textarea').each(function() {

					var $this = $(this)

					var name = $this.attr('name')

					var actualName = 'fields[' + name + ']';

					if ($this.attr('name').indexOf('[') > -1){
						var parts =  name.split('[');
						var firstPart = parts.shift();
						actualName = 'fields[' + firstPart + '][' + parts.join('[');
					}

					if ($this.attr('type') == 'checkbox') {
						if ($this.is(':checked')) {
							if (name.indexOf('[]') !== -1) {

								actualName = 'fields[' + name.replace('[]','') + ']'

								if(!data[actualName]) {
									data[actualName] = $this.val()
								} else {
									data[actualName] += ' | ' + $this.val()
								}

							} else {
								data[actualName] = 'on'
							}
						}
					} else {
						data[actualName] = $this.val()
					}

				});

				$form.find('.select').each(function() {
					data['fields[' + $(this).attr('name') + ']'] = $(this).find('.placeholder').text();
				});

				$form.find('.option.selected').each(function() {
					var $this = $(this);
					if (typeof(data['fields[' + $this.attr('name') + ']'] != 'undefined')){
						data['fields[' + $this.attr('name') + ']'] += ' | ';
					} else {
						data['fields[' + $this.attr('name') + ']'] = '';
					}
					data['fields[' + $this.attr('name') + ']'] += $this.data('value');
				});

				$form.find('#chosen-budget').each(function() {
					data['fields[budget]'] = $(this).text();
				});

				$form.find('.form-success, .form-error').slideUp()

				var submitBtn = $form.find('.submit').attr("disabled", "disabled") //add loader here if necessary

				var loader = submitBtn.siblings('.loader').show('fast')
				
				$.post('/ajax/', data, function(response) {

					response = $(response)

					submitBtn.removeAttr("disabled")

					loader.hide('fast', function() { loader.remove() })

					if (response.find('result').text() == 'success') {
						form.reset()
						$form.find('.control-group').removeClass('error success info')
						$form.find('.form-success').stop().slideDown();
						$form.find('.submit, .submit-project').slideUp();
						//TODO goal event submission
					} else {
						$form.find('.form-error').stop().slideDown()
					}
				
					return false

				}, 'xml')

				return
			}
		})
	});
});