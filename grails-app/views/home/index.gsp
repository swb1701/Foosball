<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="semantic"/>
		<title>TheConnMan</title>
	</head>
	<body>
		<div class="ui segment">
			<sec:ifNotLoggedIn>
				<oauth:connect provider="google" class="ui google plus button" style="float: right;">
					<i class="google plus icon"></i>
					Log In With Google
				</oauth:connect>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>
				<sec:username />
			</sec:ifLoggedIn>
			<h1>Welcome to TheConnMan's Grails Base</h1>
		</div>
	</body>
</html>
