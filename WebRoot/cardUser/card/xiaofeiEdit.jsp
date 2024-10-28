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
        <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script> 		
        <script language="javascript">
        </script>
	</head>

	<body>
		<div class="body-box">
			<form method="post" action="<%=path %>/xiaofeiEdit.action" name="formPw">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        消费时间：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input class="Wdate" readonly="true" type="text" id="xiaofeiShijian" name="xiaofeiShijian" onfocus="new WdatePicker(this)"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        消费金额：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" readonly="readonly" value="<s:property value="#request.xiaofei.xiaofeiJine"/>" name="xiaofeiJine" id="xiaofeiJine" size="22" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        消费地点：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <select name="xiaofeiDidian">
				            <option value="超市">超市</option>
				            <option value="饭店">饭店</option>
				            <option value="医疗">医疗</option>
				            <option value="其他">其他</option>
				        </select>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        备注：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <textarea rows="7" cols="50" name="xiaofeiBeizhu"><s:property value="#request.xiaofei.xiaofeiBeizhu"/></textarea>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        &nbsp;
				    </td>
			        <td width="80%" class="pn-fcontent">
			             <input type="hidden" name="xiaofeiId" value="<s:property value="#request.xiaofei.xiaofeiId"/>"/>
			             <input type="submit" value="修改"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="重置"/>
			        </td>
				</tr>
			</table>
			</form>
		</div>
   </body>
</html>
