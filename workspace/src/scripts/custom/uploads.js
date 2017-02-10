;(function($){

	$(".marketing-uploads").dropzone({ 
		url: 'https://edc-mazedigital.s3-eu-central-1.amazonaws.com',
		maxFilesize: "10",
		method: "post",
		autoProcessQueue: true,
		maxfiles: 5,
		parallelUploads: 2,
		clickable: '.marketing-upload-instructions',
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
				name: 'marketing-materials[filename]['+filenumber+']',
				type: 'hidden',
				value: file.name,
			});
			$filepath = $('<input/>',{
				name: 'marketing-materials[filepath]['+filenumber+']',
				type: 'hidden',
				value: $(response).find('key').text(),
			});
			$mimetype = $('<input/>',{
				name: 'marketing-materials[mimetype]['+filenumber+']',
				type: 'hidden',
				value: file.type,
			});

			$(file.previewElement).after($filename);
			$(file.previewElement).after($filepath);
			$(file.previewElement).after($mimetype);

		}			
	});

	$(".attachment-uploads").dropzone({ 
		url: 'https://edc-mazedigital.s3-eu-central-1.amazonaws.com',
		maxFilesize: "10",
		method: "post",
		autoProcessQueue: true,
		maxfiles: 5,
		parallelUploads: 2,
		clickable: '.attachment-upload-instructions',
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
			

			var filenumber = $(".attachment-uploads").data('filenumber') ? $(".attachment-uploads").data('filenumber') : 0;
			filenumber++;
			$(".attachment-uploads").data('filenumber',filenumber);

			$filename = $('<input/>',{
				name: 'attachments[filename]['+filenumber+']',
				type: 'hidden',
				value: file.name,
			});
			$filepath = $('<input/>',{
				name: 'attachments[filepath]['+filenumber+']',
				type: 'hidden',
				value: $(response).find('key').text(),
			});
			$mimetype = $('<input/>',{
				name: 'attachments[mimetype]['+filenumber+']',
				type: 'hidden',
				value: file.type,
			});

			$(file.previewElement).after($filename);
			$(file.previewElement).after($filepath);
			$(file.previewElement).after($mimetype);

		}			
	});

	$(".image-uploads").dropzone({ 
		url: '/ajax/',
		acceptedFiles: 'image/*',
		maxFilesize: "10",
		method: "post",
		paramName: "fields[image][image]",
		autoProcessQueue: true,
		maxfiles: 5,
		parallelUploads: 2,
		clickable: '.image-upload-instructions',
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
			// use this is we want to validate/accept the image
			done();
		},
		sending: function(file, xhr, formData){
			formData.append("action[save-image]", 'submit');
			formData.append("fields[description]", file.name);
			formData.append("fields[image][imagename]", file.name);
			formData.append("fields[image][crop_position]", 'crop-center crop-middle');
			formData.append("fields[image][height]", '100');
			formData.append("fields[image][width]", '100');
			formData.append("fields[image][top]", '0');
			formData.append("fields[image][left]", '0');
		},
		success: function(file, response){
			
			var $response = $(response);

			if ($response.find('save-image[result]').attr('result') == 'success') {

				var imagenumber = $(".image-uploads").data('imagenumber') ? $(".image-uploads").data('imagenumber') : 0;
				imagenumber++;
				$(".image-uploads").data('imagenumber',imagenumber);

				var $imageInput = $('<input/>',{
					name: 'images['+imagenumber+']',
					type: 'hidden',
					value: $response.find('save-image').attr('id')
				});

				$(file.previewElement).append($filename);

				$(file.previewElement).trigger('ajaxSaved', [$response,true]);

			} else {

				$(file.previewElement).trigger('ajaxSaved', [$response,false]);
			}

		}			
	});

/*
	var myDropzone = Dropzone.forElement(".image-uploads");

	myDropzone.on("thumbnail", function(file) {

		console.log('thumbnail generated');
		console.log(file);

		// var height = $('.image-wrap img').height();
		// var width = $('.image-wrap img').width();
		// $('.grid').height(height);
		// $('.grid').width(width);

        var fieldPrefix = 'image';
        $('input[name="'+fieldPrefix+'[image]"]').val($('#source-img').attr('src'));
        $('input[name="'+fieldPrefix+'[imagename]"]').val(file.name);

        //center crop by default
        var selected = 'crop-center crop-middle';
		$('.image-preview-container img').removeClass().addClass(selected)
		$('input[name="'+fieldPrefix+'[crop_position]"]').val(selected);

		var data = {"action[save-image]": 'submit', "fields[description]": file.name};

		data["fields[image][image]"] = file.upload;
		data["fields[image][imagename]"] = file.name;
		data["fields[image][crop_position]"] = 'crop-center crop-middle';
		data["fields[image][height]"] = '100';
		data["fields[image][width]"] = '100';
		data["fields[image][top]"] = '0';
		data["fields[image][left]"] = '0';

		$.ajax({
			url: '/ajax/',
			data: data,
			type: 'POST',
			contentType: false,
			dataType: 'xml',
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
					done('error uploading your photo');
				}
			}
		});


	});*/


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
