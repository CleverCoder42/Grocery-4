	$( document ).ready(function() {
		
		var url = "http://localhost:8086";
		
		// GET REQUEST
		$("#getBtn").click(function(event){
			event.preventDefault();
			ajaxGet();
		});
		
		// DO GET
		function ajaxGet(){
			$.ajax({
				type : "GET",
				url : url + "/getitem",
				success: function(result){
						$('#getResultDiv .list-group li').remove();
						var itemList = "";
						$.each(result, function(i, item){
						var item = "Item " + i + ": item Id=" + item.itemId + "item Name=" + item.item_Name + 
							" ,quantity=" + item.quantity + " ,description=" + description +
							" ,cost=" + cost +" category_Id="+ category_Id	+
							" ,discount=" + discount + " ,pic=" + pic +" ,dateOfExpiry="+dateOfExpiry+ "<br\>";
							$('#getResultDiv .list-group').append('<li><h4 class="list-group-item">'+item+'</h4></li>')
				        });
						console.log("Success: ", result);
					
				},
				error : function(e) {
					$("#getResultDiv").html("<strong>Error</strong>");
					console.log("ERROR: ", e);
				}
			});	
		}
	})


