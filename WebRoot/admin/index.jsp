<%@ page contentType="text/html; charset=UTF-8"   language="java"  import="java.util.*, java.text.*;" 
%>  
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
</head>

<%
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","no-store");   
  response.setHeader("Cache-Control","no-cache");   
  response.setDateHeader("Expires",0);
%>

<frameset rows="98,*" frameborder="no" border="0" framespacing="0">
  <frame src="<%=path %>/admin/top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
  <frame src="<%=path %>/admin/center.jsp" name="mainFrame" id="mainFrame"/>
  <noframes>
     <body>您的浏览器无法处理框架！</body>
  </noframes>
</frameset>

</html>
