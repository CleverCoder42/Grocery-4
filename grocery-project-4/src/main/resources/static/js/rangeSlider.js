/**  Range Slider */
$(document).ready(function() {
	var url = "http://localhost:8086";
  const $valueSpan = $('.valueSpan');
  const $value = $('#slider11');
  $valueSpan.html($value.val());
  $value.on('input change', () => {

    $valueSpan.html($value.val());
  });
});



