$(document).ready(function(){
	$("#inter").click(function(){
		$(".inter").show();
		$(".fore").hide();
	});	
	$("#fore").click(function(){
		$(".inter").hide();
		$(".fore").show();
	});	
});