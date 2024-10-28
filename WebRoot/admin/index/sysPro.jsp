<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="sun.management.ManagementFactory" %>
<%@ page import="com.sun.management.OperatingSystemMXBean" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		
		<style type="text/css">
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>
	</head>

	<body>
		<div class="body-box">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="border:#c8c8e7 1px solid; border-top:0; margin-top:5px;">
				<tr>
					<td height="26" colspan="2" align="left" background="<%=path %>/img/msg_bg.jpg">
						&nbsp;&nbsp;
						<img src="<%=path %>/img/ico1.gif" border="0" align="absmiddle" />
						<strong>系统属性</strong>
					</td>
				</tr>
				<tr style="background-color:#F7F8FA">
					<td height="25" align="right" style="border-bottom:#cccccc 1px dashed;">
						操作系统版本：
					</td>
					<td align="left" style="border-bottom:#cccccc 1px dashed;">
						<%=System.getProperty("os.name") %>&nbsp;&nbsp;<%=System.getProperty("os.version") %>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						操作系统类型：
					</td>
					<td align="left" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						<%=System.getProperty("os.arch") %><!-- x32,x86 -->
					</td>
				</tr>
				<tr>
					<td height="25" align="right" bgcolor="#F7F8FA" style="border-bottom:#cccccc 1px dashed;">
						用户,目录,临时目录：
					</td>
					<td align="left" bgcolor="#F7F8FA" style="border-bottom:#cccccc 1px dashed;">
						 <%=application.getRealPath("/")%>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						JDK版本：
					</td>
					<td align="left" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						<%=System.getProperty("java.version") %>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" bgcolor="#F7F8FA" style="border-bottom:#cccccc 1px dashed;">
						JKD安装目录：
					</td>
					<td align="left" bgcolor="#F7F8FA" style="border-bottom:#cccccc 1px dashed;">
						<%=System.getProperty("java.home") %>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						总内存/剩余内存：
					</td>
					<td align="left" bgcolor="#FFFFFF" style="border-bottom:#cccccc 1px dashed;">
						<% OperatingSystemMXBean osmb = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean();%>
						<b><%=osmb.getTotalPhysicalMemorySize() / 1024/1024 %></b>MB&nbsp;&nbsp;/&nbsp;&nbsp;<b><%=osmb.getFreePhysicalMemorySize() / 1024/1024 %></b>MB
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
