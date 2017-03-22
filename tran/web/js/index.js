$(document).ready(function(){
	$("#inter").click(function(){
		$(".inter").show();
		$(".fore").hide();
	});	
	$("#fore").click(function(){
		$(".inter").hide();
		$(".fore").show();
	});
	$("#tsign").click(function(){
		var a=$("#tpwd").val();
		var b=$("#tpwd2").val();
		if(a==b){
			return true;
		}
		else{
			return false;
		}
	});
	$("#fsign").click(function(){
		var a=$("#fpwd").val();
		var b=$("#fpwd2").val();
		if(a==b){
			return true;
		}
		else{
			return false;
		}
	});
	$("#asubmit").click(function(){
		var a=$("#anewpwd").val();
		var b=$("#arenewpwd").val();
		if(a==b){
			return true;
		}
		else{
			return false;
		}
	});
	$("#tsubmit").click(function(){
		var a=$("#tnewpwd").val();
		var b=$("#trenewpwd").val();
		if(a==b){
			return true;
		}
		else{
			return false;
		}
	});
	$("#fsubmit").click(function(){
		var a=$("#fnewpwd").val();
		var b=$("#frenewpwd").val();
		if(a==b){
			return true;
		}
		else{
			return false;
		}
	});
});

