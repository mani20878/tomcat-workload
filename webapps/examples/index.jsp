<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tomcat-loadgen Application</title>
</head>
<body>
	<h1>Welcome to <%= System.getProperty("title")%>    <%= System.getProperty("appz.image_version")%></h1>
		
	<h2>
		System Properties
		</br>
		<pre>
		 <%@ page import="java.util.*"%>
	<%
		Properties systemProperties = System.getProperties();
		out.println();
		SortedMap sortedSystemProperties = new TreeMap(systemProperties);
		Set keySet = sortedSystemProperties.keySet();
		Iterator iterator = keySet.iterator();
		while (iterator.hasNext()) {
			String propertyName = (String) iterator.next();
			String propertyValue = systemProperties.getProperty(propertyName);
			out.println( propertyName + " : "+  propertyValue);
	}
		%>
	</pre>

	</h2>
	<ul>
<li><a href="servlets/">Servlets examples</a></li>
<li><a href="jsp/">JSP Examples</a></li>
</ul>

</body>
</html>
