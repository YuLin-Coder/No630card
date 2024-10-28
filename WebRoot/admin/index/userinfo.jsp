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
                 var userPwReal="${sessionScope.admin.userPw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("新密码不能空");
                     return ;
                 }
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
                 {
                     alert("两次输入的密码不一致");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("修改成功");
            }
        </script>
	</head>

	<body>
		<div class="body-box">
			<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         登录名：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        原密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" name="userPw" id="userPw" size="22"/>
				    </td>
				</tr>
				<tr> 
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         新密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" id="userPw1" name="userPw1" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        确认密码：
				    </td>
				       <td width="80%" class="pn-fcontent">
				           <input type="password" name="userPw2" id="userPw2" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        &nbsp;
				    </td>
			        <td width="80%" class="pn-fcontent">
			             <input type="button" value="修改" onclick="check()"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="重置"/>
			             <img id="indicator" src="<%=path %>/images/loading32.gif" alt="Loading..." style="display:none"/>
			        </td>
				</tr>
			</table>
			</form>
		</div>
   </body>
</html>
