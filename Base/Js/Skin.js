	
	var homeDomain = 'www.40fingers.net'

	$(document).ready(
		function(){
			initSkin();
	});
			
	function initSkin(){
		
		fixHomeLink();

	}
	
	function fixHomeLink(){
		/* This will change the links to our Home page. 
		It will add the name of the DEMO skin as a querystring parameter, so we can see in Analytics from what Demo skins people visit our website.
		That's all. :-)
		*/
			var link
			$("#skin a").each(function(){
				
				link = $(this).attr('href');

				if (link !== undefined && link.indexOf(homeDomain) > -1){
					var link =  link + '?source=' + qsPar;
					$(this).attr('href', link);
					$(this).attr('target', '_blank');
				}
		});
	
	}
	
	function toggleMenu(){
		var wrapperSelector = '.wrap-main'
		var cssClass = "menu-open"
		
		if ($(wrapperSelector).hasClass(cssClass)){
			$(wrapperSelector).removeClass(cssClass)
		}else{
			$(wrapperSelector).addClass(cssClass)
		}


		
	}

