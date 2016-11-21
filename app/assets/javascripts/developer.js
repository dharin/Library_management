$(document).on('ready page:load', function(event) {
  $('.book_form').validate({
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
  $( "#new_user" ).validate({
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

  $('#book_list').dataTable({
    "aoColumnDefs": [
    {
      'bSortable': false,
      "aTargets": [ 4 ]
    }
    ],
    "aaSorting": [],
    "aLengthMenu": [
    [25, 50, 100, -1],
    [25, 50, 100, "All"] // change per page values here
    ],
    // set the initial value
    "iDisplayLength": 50
  });
  jQuery('#book_list_wrapper .dataTables_filter input').addClass("form-control"); // modify table search input

  $('#user_list').dataTable({
    "aoColumnDefs": [
    {
      'bSortable': false,
      "aTargets": [ 3 ]
    }
    ],
    "aaSorting": [],
    "aLengthMenu": [
    [25, 50, 100, -1],
    [25, 50, 100, "All"] // change per page values here
    ],
    // set the initial value
    "iDisplayLength": 50
  });
  jQuery('#user_list_wrapper .dataTables_filter input').addClass("form-control"); // modify table search input

})
