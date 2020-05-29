$( document ).ready(function() {
	
	var url = "http://localhost:8086";
	
	// SUBMIT FORM
    $("#itemForm").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		ajaxPost();
	});
    
    
    function ajaxPost(){
    	
    	// PREPARE FORM DATA
    	var formData = {
    		itemId : $("#itemId").val(),
    		itemname : $("#item_Name").val(),
    		quantity : $("#quantity").val(),
    		description : $("#description").val(),
    		cost : $("#cost").val(),
    		category_Id : $("#category_Id").val(),
    		discount : $("#discount").val(),
    		pic :  $("#pic").val(),
    		dateOfExpiry :  $("#dateOfExpiry").val()
    	}
    	
    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : url + "/postitem",
			data : JSON.stringify(formData),
			dataType : 'json',
			success : function(result) {
				if(result.status == "Done"){
					$("#postResultDiv").html("<strong>" + "Post Successfully! Item's Info: itemId = " 
							+ result.data.itemId + " ,item_Name = " + result.data.item_Name + 
							" ,quantity = " +result.data.quantity + " ,description = " + result.data.description +
							" ,cost= "+ result.data.cost + " ,category_Id = " + result.data.category_Id +
							",discount= "+ result.data.discount + " ,pic = " + result.data.pic+ " ,dateOfExpiry  = " + result.data.dateOfExpiry  +"</strong>");
				}else{
					$("#postResultDiv").html("<strong>Error</strong>");
				}
				console.log(result);
			},
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
    	
    	// Reset FormData after Posting
    	resetData();

    }
    
    function resetData(){
    
    	$("#itemId").val("");
		$("#item_Name").val("");
		$("#quantity").val("");
		$("#description").val("");
		$("#cost").val("");
		$("#category_Id").val("");
		$("#discount").val("");
		$("#pic").val("");
		$("#dateOfExpiry").val("");
		
    	
    	
    }
})