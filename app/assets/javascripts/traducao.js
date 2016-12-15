var n = 0;


$( document ).ready(function() {
    
    console.log( "ready!" );
    $(".portuguesClick").click(function(){
        
    })
    $(".inglesClick").click(function(){
        n = 1
        alert("ingles")
    })
    
	if (n == 0) {
	    $("#ingles").fadeOut();
        $("#portugues").fadeIn();
	} 
	if (n == 1){
	    $("#portugues").fadeOut();
        $("#ingles").fadeIn();   
	}
	if (n == 2) {
	}
    
    
});
