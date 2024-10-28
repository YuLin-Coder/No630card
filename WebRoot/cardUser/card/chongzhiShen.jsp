<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

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

		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"/>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"/>
		
		<style type="text/css">
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 if(document.formPw.money.value=="")
                 {
                     alert("请输入充值金额");
                     return ;
                 }
                 document.formPw.submit();
            }
        </script>
	</head>

	<body>
		<div class="body-box">
			<form method="post" action="<%=path %>/chongzhiShen.action" name="formPw">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        请输入充值金额：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="money" id="money" size="22" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        &nbsp;
				    </td>
			        <td width="80%" class="pn-fcontent">
			             <input type="hidden" name="userId" value="<s:property value="#session.user.userId"/>"/>
			             <input type="button" value="确定" onclick="check()"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="重置"/>
			        </td>
				</tr>
			</table>
			</form>
		</div>
   </body>
</html>
