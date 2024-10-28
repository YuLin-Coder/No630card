<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style type="text/css">
		body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
		.navPoint { COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt } 
    </style>
  </head>
  
  <body style="overflow:hidden">
	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
	  <tr>
	    <td width="165" id=frmTitle noWrap name="fmTitle" align="center" valign="top">
	       <table width="165" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
		      <tr>
		        <td  bgcolor="#1873aa" style="width:6px;">&nbsp;</td>
		        <td width="165"><iframe name="I1" height="100%" width="165" src="<%=path %>/admin/left.jsp" border="0" frameborder="0" scrolling="no"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></td>
		      </tr>
	       </table>	
	  	</td>
	    <td width="1"  style="width:1px;"valign="middle" bgcolor="1873aa"></td>
	    <td width="100%" align="center" valign="top">
	       <iframe name="I2" height="100%" width="100%" border="0" frameborder="0" src="<%=path %>/admin/index/sysPro.jsp" scrolling="yes"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
	    </td>
	  </tr>
	</table>
  </body>
</html>
