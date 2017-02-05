;(function($){

	$(".marketing-uploads").dropzone({ 
		url: 'https://edc-mazedigital.s3-eu-central-1.amazonaws.com',
		maxFilesize: "10",
		method: "post",
		autoProcessQueue: true,
		maxfiles: 5,
		parallelUploads: 2,
		clickable: '.instructions-text',
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
				data: {"action[generate-s3-signature]": 'submit', "fields[name]": file.name, "fields[type]": file.type, "fields[size]": file.size, "fields[id]": 326},
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
						jQuery.parseJSON(response.responseText);
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
			

			var filenumber = $(".marketing-uploads").data('filenumber') ? $(".marketing-uploads").data('filenumber') : 0;
			filenumber++;
			$(".marketing-uploads").data('filenumber',filenumber);

			$filename = $('<input/>',{
				name: 'marketing-material[filename]['+filenumber+']',
				type: 'hidden',
				value: file.name,
			});
			$filepath = $('<input/>',{
				name: 'marketing-material[filepath]['+filenumber+']',
				type: 'hidden',
				value: $(response).find('key').text(),
			});
			$mimetype = $('<input/>',{
				name: 'marketing-material[mimetype]['+filenumber+']',
				type: 'hidden',
				value: file.type,
			});

			$(".marketing-uploads").after($filename);
			$(".marketing-uploads").after($filepath);
			$(".marketing-uploads").after($mimetype);

		}			
	});

} (jQuery) );



/*(document).ready(function(){

	$(".dropzone").dropzone({ 
		url: 'http://files.hero.maze.digital.s3-eu-central-1.amazonaws.com',
		maxFilesize: "10",
		method: "post",
		autoProcessQueue: true,
		// maxfiles: 1,
		parallelUploads: 1,
		// dictDefaultMessage: "Upload Image",
		previewTemplate: '<div class="dz-preview dz-file-preview">'+

							'<div class="dz-image">'+
								'<img data-dz-thumbnail />'+
							'</div>'+
							'<div class="dz-details">'+
								'<div class="dz-details-content">'+
									'<div class="dz-filename"><span data-dz-name></span></div>'+
									'<div class="dz-size" data-dz-size></div>'+
									'<div class="dz-error-message"><span data-dz-errormessage></span></div>'+
								'</div>'+
							'</div>'+
							'<div class="dz-actions">'+
								'<i class="fa fa-times" aria-hidden="true"></i>'+
							'</div>'+
							'<div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>'+
							'<div class="dz-success-mark hidden"><span class="fa-stack"><i class="fa fa-upload fa-stack-2x"></i><i class="fa fa-check fa-stack-1x" style="color:white;"></i></span></div>'+
							'<div class="dz-error-mark hidden"><span class="fa-stack"><i class="fa fa-upload fa-stack-2x"></i><i class="fa fa-times fa-stack-1x" style="color:white;"></i></span></div>'+
						'</div>',
			
		accept: function(file, done){
			file.postData = [];
			var $el = jQuery($(this)[0].element)
			console.log($el.data('path'));
			$.ajax({
				url: '/ajax/',
				data: {"action[generate-s3-signature]": 'submit', "fields[name]": $el.data('path') + file.name, "fields[type]": file.type, "fields[size]": file.size, "fields[id]": $el.data('fieldid')},
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
						response = jQuery.parseJSON(response.responseText);
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
			

			var $el = jQuery($(this)[0].element)

			var filenumber = $el.data('filenumber') ? $el.data('filenumber') : 0;
			filenumber++;
			$el.data('filenumber',filenumber);

			$filename = $('<input/>',{
				name: $el.data('name')+'[filename]['+filenumber+']',
				type: 'hidden',
				value: file.name,
				class: 'ajaxrow',
			});
			$filepath = $('<input/>',{
				name: $el.data('name')+'[filepath]['+filenumber+']',
				type: 'hidden',
				value: $(response).find('key').text(),
				class: 'ajaxrow',
			});
			$mimetype = $('<input/>',{
				name: $el.data('name')+'[mimetype]['+filenumber+']',
				type: 'hidden',
				value: file.type,
				class: 'ajaxrow',
			});

			var data = {'action[save-contact]':'1'};

			$el.find('input').each(function(){
				parseFieldNames($(this), data);
			})

			parseFieldNames($mimetype, data);
			parseFieldNames($filepath, data);
			parseFieldNames($filename, data);

			data['id'] = $el.data('id'); // id of contact

			$.post('/ajax/', data, function(inner_response) {

				inner_response = $(inner_response);

				if (inner_response.find('save-contact').attr('result') == 'success') {
					var uploadId = inner_response.find('save-contact').attr('id');

					$el.append($mimetype,$filepath,$filename)

					$el.find('.dz-success-mark').removeClass('hidden');

				}
					
					//TODO goal event submission
			else {
				//not successfull
				// alert('not successfull');
				$('.dz-error-mark').removeClass('hidden');
			}

			return false

			}, 'xml')
		}
	});		

});


$(document).on('click','.dz-actions .fa-times',function(){

	$dropzone = $(this).closest('.dropzone');

	$(this).closest('.dz-preview').remove();

	var data = {'action[save-contact]':'1'};

	$dropzone.find('input').each(function(){
		parseFieldNames($(this), data);
	})

	data['id'] = $dropzone.data('id'); // id of contact

	$.post('/ajax/', data, function(inner_response) {

		inner_response = $(inner_response);

		if (inner_response.find('save-contact').attr('result') == 'success') {
			
			//succesfully removed item ( not from S3 )

		}
			
	else {
		//not successfull
	}

	return false

	}, 'xml')
});*/
