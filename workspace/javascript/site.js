jQuery(document).ready(function() {
	jQuery("a[rel='gallery']").colorbox({transition:"elastic"});
	var pageTracker = _gat._getTracker("UA-6824117-4");
	pageTracker._trackPageview();
	jQuery('a').click(function() {
	  var $a = $(this);
	  var href = $a.attr('href');

	  // see if the link is external
	  if ( (href.match(/^http/)) && (! href.match(document.domain)) ) {
	    var category = 'outgoing';
	    var event = 'click'; 
	    var label = href;
	    pageTracker._trackEvent(category, event, href);
	  }
	});

})