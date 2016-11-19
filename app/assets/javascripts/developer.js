$(document).on('ready page:load', function(event) {
  $( "#new_user" ).validate( {
		errorElement: "em",
		errorPlacement: function ( error, element ) {
			// Add the `help-block` class to the error element
			error.addClass( "help-block" );
		  error.insertAfter( element );
		},
		highlight: function ( element, errorClass, validClass ) {
			$( element ).parents( ".form-group" ).addClass( "has-error" ).removeClass( "has-success" );
		},
		unhighlight: function (element, errorClass, validClass) {
			$( element ).parents( ".form-group" ).addClass( "has-success" ).removeClass( "has-error" );
		}
  })
})
