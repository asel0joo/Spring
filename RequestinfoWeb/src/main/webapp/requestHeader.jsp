<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내장 객체 - request</title>
</head>
<body>
	<h2>응답 헤어 정보 출력하기</h2>
	<%
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			String headerName = headers.nextElement();
	         String headerValue = request.getHeader(headerName);
	         out.print("헤더명 : " + headerName + "헤더값 :" + headerValue + "<br/>");
		}
	%>
</body>
</html>