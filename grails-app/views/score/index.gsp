<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Foosball Live Score Display</title>
<r:require module="grailsEvents"/>
<r:script>
var grailsEvents = new grails.Events('http${ grails.util.Environment.current.name == 'development' ? '' : 's' }://'+document.location.hostname+':'+document.location.port+'/', {transport: 'sse'});
grailsEvents.send('scoreDisplay',["message":"initializing..."]);
grailsEvents.on('scoreDisplay',function(data) {
  alert("Received "+data);
});
</r:script>
</head>
<body>
  <div class="body">
  </div>
</body>
</html>