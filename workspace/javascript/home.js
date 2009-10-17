jQuery(document).ready(function() {
    // jQuery('#cboxOverlay').remove(); 
    // jQuery('#colorbox').appendTo('#slideshow'); 
    // jQuery("a[rel='slideshow']").colorbox({transition:"fade", speed: 800, slideshow:true, open:true, slideshowSpeed: 3000, slideshowStart:"", slideshowStop:"", current:"", previous:"", next:"", close:""}); 
	jQuery('#slideshow').cycle({
		timeout: 4000,
		speed: 1200,
		height: '380px'
	});
})