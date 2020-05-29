function addItemToCart(itemId)
{
	$.ajax ({ 
		url: '/cart/items', 
		type: "POST", 
		dataType: "json",
		contentType: "application/json",
		data : '{"itemId":"'+ itemId +'"}"',
		complete: function(responseData, status, xhttp){
			updateCartItemCount();			
		}
	}); 
}