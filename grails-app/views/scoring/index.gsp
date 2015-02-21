<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="semantic"/>
		<title>Foosball Scoring</title>
		<script src="${resource(dir: 'js', file: 'jquery.atmosphere.js')}" charset="utf-8"></script>
		<script src="/static/plugins/events-push-1.0.M3/js/grails/grailsEvents.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="ui segment">
			<h1>Foosball Scoring</h1>
		</div>
		<r:script>
			jQuery.browser = {};
			(function () {
			    jQuery.browser.msie = false;
			    jQuery.browser.version = 0;
			    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
			        jQuery.browser.msie = true;
			        jQuery.browser.version = RegExp.$1;
			    }
			})();
			
			var grailsEvents;
			
			$(function() {
				var gameId = 1;
				grailsEvents = new grails.Events(document.location.origin, {transport: 'sse'});
				
				grailsEvents.on('scoringPush-' + gameId, function(data) {
					console.log(data);
				});
			});
		</r:script>
	</body>
</html>
