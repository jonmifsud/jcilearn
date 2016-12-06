$(document).ready(function(){
	if ($('body').hasClass('start-a-project')){


		//no-ui slider
		$(document).on('click','.option',function(){
			$(this).toggleClass('selected');
		});

		//no-ui slider
		$("#budget-slider").noUiSlider({
			start: [ 10, 30 ],
			// step: 2,
			behaviour: 'tap',
			connect: true,
			range: {
				'min':  2,
				'0%': [ 2, 1 ],
				'40%': [ 10, 2 ],
				'70%': [ 30, 5 ],
				'100%': [ 100, 10 ],
				'max':  100
			}
		});

		var formatter = {
							'to' : function(val){
								return Math.round(val);
							},
							'from' : function(val){
								return val;
							}
						};

		$("#budget-slider").Link('lower').to($('#lower-value'),null, formatter);
		$("#budget-slider").Link('upper').to($('#upper-value'),null, formatter);

		$(".attachments").dropzone({ 
			url: 'https://mazedigital.s3-eu-west-1.amazonaws.com',
			maxFilesize: "10",
			method: "post",
			autoProcessQueue: true,
			maxfiles: 5,
			parallelUploads: 2,
			clickable: '.instructions i',
			dictDefaultMessage: "Drop files here to upload - Maximum Size : 10MB",
			previewTemplate: '<div class="dz-preview dz-file-preview">'+
								'<div class="dz-details">'+
									'<img data-dz-thumbnail />'+
									'<div class="dz-text-details">'+
										'<div class="dz-filename"><span data-dz-name></span></div>'+
										'<div class="dz-size" data-dz-size></div>'+
									'</div>'+
								'</div>'+
								'<div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>'+
								'<div class="dz-success-mark"><span>✔</span></div>'+
								'<div class="dz-error-mark"><span>✘</span></div>'+
								'<div class="dz-error-message"><span data-dz-errormessage></span></div>'+
							'</div>',
			accept: function(file, done){
				file.postData = [];
				$.ajax({
					url: '/ajax/',
					data: {"action[generate-s3-signature]": 'submit', "fields[name]": file.name, "fields[type]": file.type, "fields[size]": file.size, "fields[id]": 24},
					type: 'POST',
					dataType: 'json',
					success: function(response)
					{
						file.custom_status = 'ready';
						file.postData = response;
						$(file.previewTemplate).addClass('uploading');
						done();
					},
					error: function(response)
					{
						file.custom_status = 'rejected';

						if (response.responseText) {
							response = parseJsonMsg(response.responseText);
						}
						if (response.message) {
							done(response.message);
						} else {
							done('error preparing the upload');
						}
					}
				});
			},
			sending: function(file, xhr, formData){
				// xhr.setRequestHeader('Content-Type', file.type || 'application/octet-stream');
				$.each(file.postData, function(k, v){
					if (k.substr(0,1) == 'X'){
						xhr.setRequestHeader(k,v);
					} else {
						formData.append(k, v);
					}
				});
			},
			success: function(file, response){
				

				var filenumber = $(".attachments").data('filenumber') ? $(".attachments").data('filenumber') : 0;
				filenumber++;
				$(".attachments").data('filenumber',filenumber);

				$filename = $('<input/>',{
					name: 'files[filename]['+filenumber+']',
					type: 'hidden',
					value: file.name,
				});
				$filepath = $('<input/>',{
					name: 'files[filepath]['+filenumber+']',
					type: 'hidden',
					value: $(response).find('key').text(),
				});
				$mimetype = $('<input/>',{
					name: 'files[mimetype]['+filenumber+']',
					type: 'hidden',
					value: file.type,
				});

				$(".attachments").after($filename);
				$(".attachments").after($filepath);
				$(".attachments").after($mimetype);
			}			
		});


	}
}); 