$(document).on('click','.btn-default',function(e){
	e.preventDefault();
	
	var ip = $('#ip_address').val(),
		mac = $('#mac_address').val();

	$.ajax({
		  method: "GET",
		  url: document.origin + '/public/validation/index',
		  data: { ip:ip, mac:mac },
		  success: function(resp){
		  	if(resp.success == true){
					$('.form-horizontal').submit();
		  	}else{
		  		$('.ip_val').addClass('alert-danger').append( "<p> Incorrect ip/mac address </p>" );
		  	}
		  }
	});
});