$( document ).ready(function() {
	$( "input" ).on( "click", function() { 
		var boxid = "span.tag." + this.id;
		$( boxid ).toggle(); 
	}); 	
});
