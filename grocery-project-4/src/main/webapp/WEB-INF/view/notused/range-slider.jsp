<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
	<head>
    <title>jQuery UI : Range Selector with Current value Displayed </title> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/hot-sneaks/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
	<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
       <script>
        $(document).ready(function() {
        $( "#mySlider" ).slider({
          range: true,
          min: 0,
          max: 400,
          values: [ 200, 500 ],
          slide: function( event, ui ) {
         $( "#price" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
         }
      });
          
      $( "#price" ).val( "$" + $( "#mySlider" ).slider( "values", 0 ) +
               " - $" + $( "#mySlider" ).slider( "values", 1 ) );
          
        });
    </script>

   
</head> 
<body>
 <p>
   <label for="price" style="font-family:Verdana;">Price Range:</label>
  <input type="text" id="price" style="border:0; color:#fa4b2a; font-weight:bold;">
</p>
 
<div id="mySlider"></div>
</body>
</html>