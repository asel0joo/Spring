<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü - request</title>
</head>
<body>
	<h2>���� ��� ���� ����ϱ�</h2>
	<%
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			String headerName = headers.nextElement();
	         String headerValue = request.getHeader(headerName);
	         out.print("����� : " + headerName + "����� :" + headerValue + "<br/>");
		}
	%>
</body>
</html>