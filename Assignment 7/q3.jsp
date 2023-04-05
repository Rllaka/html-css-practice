<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,
     org.w3c.dom.*" errorPage=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	



  	String userId = request.getParameter("userId");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder;
	Document doc;

	try {
		dBuilder = dbFactory.newDocumentBuilder();
		doc = dBuilder.parse("D:/Pratyush(20BCSB41)IWT/greetings_1/src/main/webapp/META-INF/web.xml");

		doc.getDocumentElement().normalize();
		NodeList nList = doc.getElementsByTagName("User");

		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);
			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				String id = eElement.getElementsByTagName("id").item(0).getTextContent();
				if (id.equals(userId)) {
					String name = eElement.getElementsByTagName("Name").item(0).getTextContent();
					String age = eElement.getElementsByTagName("Age").item(0).getTextContent();
					String address = eElement.getElementsByTagName("Address").item(0).getTextContent();
					out.println("<p>Name : " + name + "</p>");
					out.println("<p>Age : " + age + "</p>");
					out.println("<p>Address : " + address + "</p>");
				}
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</body>
</html>