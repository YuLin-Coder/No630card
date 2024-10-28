<%@ page contentType="text/html; charset=UTF-8"   language="java"  import="java.util.*, java.text.*;"%>  
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
	body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
	.STYLE1 {font-size: 12px;color: #FFFFFF;}
	.STYLE2 {font-size: 9px}
	.STYLE3 {color: #033d61;font-size: 12px;}
</style>
<script type="text/javascript">
    function gofirst()
	{
	   top.mainFrame.I2.I2.location.href="<%=path %>/admin/index/sysPro.jsp";
	}
	function logout()
	{
		if (confirm("你确定要退出吗？"))
		{ 
		    window.top.location.href="<%=path %>/logout.jsp" ;
	    } 
	}
</script>
</head>

<%
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","no-store");   
  response.setHeader("Cache-Control","no-cache");   
  response.setDateHeader("Expires",0);
  Date date = new Date();
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 E");
%>


<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="70" background="<%=path %>/images/main_05.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		             <td height="24">
		                <table width="100%" border="0" cellspacing="0" cellpadding="0">
				          <tr>
				            <td width="270" height="24" background="<%=path %>/images/main_03.gif">&nbsp;</td>
				            <td width="505" background="<%=path %>/images/main_04.gif">&nbsp;</td>
				            <td>&nbsp;</td>
				            <td width="21"><img src="<%=path %>/images/main_07.gif" width="21" height="24"></td>
				          </tr>
		                </table>
		             </td>
		          </tr>
		          <tr>
                     <td height="38">
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="270" height="38"><img src="<%=path %>/images/main_09.gif"/></td>
					            <td>
					                <table width="100%" border="0" cellspacing="0" cellpadding="0">
						               <tr>
						                   <td width="77%" height="25" valign="bottom">
						                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
								                  <tr>
								                    <td width="50" height="19"><div align="center"><img src="<%=path %>/images/main_12.gif" width="49" height="19" onclick="gofirst()" style="cursor:hand"></div></td>
								                    <td width="50"><div align="center"><img src="<%=path %>/images/main_14.gif" width="48" height="19" onclick="top.mainFrame.I2.I2.history.back()" style="cursor:hand"></div></td>
								                    <td width="50"><div align="center"><img src="<%=path %>/images/main_16.gif" width="48" height="19" onclick="top.mainFrame.I2.I2.history.forward()" style="cursor:hand"></div></td>
								                    <td width="50"><div align="center"><img src="<%=path %>/images/main_18.gif" width="48" height="19" onclick="top.mainFrame.I2.I2.location.reload()" style="cursor:hand"></div></td>
								                    <td width="50"><div align="center"><img src="<%=path %>/images/main_20.gif" width="48" height="19" onclick="logout()" style="cursor:hand"></div></td>
								                    <td>&nbsp;</td>
								                  </tr>
						                       </table>
						                   </td>
							               <td width="220" valign="bottom"  nowrap="nowrap">
							                   <div align="right"><span class="STYLE1"><span class="STYLE2">■</span> 今天是：<%=sdf.format(date)%></span></div>
							               </td>
							           </tr>
						            </table>
						        </td>
						        <td width="21"><img src="<%=path %>/images/main_11.gif" width="21" height="38"></td>
						      </tr>
						 </table>
					 </td>
				  </tr>
			      <tr>
			         <td height="8" style=" line-height:8px;">
			             <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="270" background="<%=path %>/images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
					            <td width="505" background="<%=path %>/images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
					            <td style=" line-height:8px;">&nbsp;</td>
					            <td width="21" style=" line-height:8px;"><img src="<%=path %>/images/main_31.gif" width="21" height="8"></td>
					          </tr>
			             </table>
			         </td>
			     </tr>
			</table>
		</td>
	</tr>
    <tr>
        <td height="28" background="<%=path %>/images/main_36.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="177" height="28" background="<%=path %>/images/main_32.gif">
		            <table width="100%" border="0" cellspacing="0" cellpadding="0">
			          <tr>
			            <td width="20%"  height="22">&nbsp;</td>
			            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户:</div></td>
			            <td width="21%">&nbsp;</td>
			          </tr>
		            </table>
		        </td>
               <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
			          <tr>
                        <td width="220" height="28">
                           <table width="220" border="0" align="center" cellpadding="0" cellspacing="0">
				                  <tr> 
				                    <td height="20" style="cursor:hand">
				                        <div align="left" class="STYLE3">&nbsp;&nbsp;&nbsp;&nbsp;<b><s:property value="#session.admin.userName"/></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;角色：学生用户</div>
				                    </td>
				                  </tr>
		                    </table>
				        </td>
                        
                        <%--<td width="3"><img src="<%=path %>/images/main_34.gif" width="3" height="28"></td>--%>
                        <td width="60" height="28">
                           <table width="60" border="0" align="center" cellpadding="0" cellspacing="0">
				                  <tr> 
				                    <td height="20" style="cursor:hand">
				                        <div align="center" class="STYLE3">&nbsp;</div>
				                    </td>
				                  </tr>
		                    </table>
				        </td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
               </td>
               <td width="21"><img src="<%=path %>/images/main_37.gif" width="21" height="28"></td>
              </tr>
            </table>
        </td>
    </tr>
</table>

</body>
</html>
