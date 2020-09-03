$(document).ready(function(){
	$(".xoa").click(function(){
		$.post('index.php?page=list-customer&method=oke', function(){
			$("#noti").html("OKEEEE");
		});
	});
})