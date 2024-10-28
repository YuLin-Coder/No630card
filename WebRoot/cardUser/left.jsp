<%@ page language="java"  pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<%
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","no-store");   
  response.setHeader("Cache-Control","no-cache");   
  response.setDateHeader("Expires",0);
%>
<style type="text/css">
    body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
    .STYLE1 {font-size: 12px;color: #FFFFFF;}
    .STYLE3 {font-size: 12px;color: #033d61;}
    .STYLE5 {font-size: 14px;color: #ffffff;font-weight: bold;}
    .menu_title SPAN {FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px }
    .menu_title2 SPAN {FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px}
</style>
<script>
     var he=document.body.clientHeight-105
     document.write("<div id=tt style=height:"+he+";overflow:hidden>");

     function MenuClick(url)
     {
        alert("ddd");
        parent.I2.parent.I2.location=url;
     }
     
     function showsubmenu(sid)
     {
		whichEl = eval("submenu" + sid);
		imgmenu = eval("imgmenu" + sid);
		if (whichEl.style.display == "none")
		{
		  eval("submenu" + sid + ".style.display=\"\";");
		  imgmenu.background="<%=path %>/images/main_47.gif";
		}
		else
		{
			eval("submenu" + sid + ".style.display=\"none\";");
			imgmenu.background="<%=path %>/images/main_48.gif";
		}
     }

	function showthdmenu(sid)
	{
		whichE2 = eval("thirdmenu" + sid+"2");
		if (whichE2.style.display == "none")
		{
			eval("thirdmenu" + sid + "1.style.display=\"\";");
			eval("thirdmenu" + sid + "2.style.display=\"\";");
			imgmenu.background="<%=path %>/images/main_47.gif";
		}
		else
		{
			eval("thirdmenu" + sid + "1.style.display=\"none\";");
			eval("thirdmenu" + sid + "2.style.display=\"none\";");
			imgmenu.background="<%=path %>/images/main_48.gif";
		}
	}


	function logout()
	{
		if (confirm("你确定要退出吗？"))
		{ 
		    window.top.location.href="logout.jsp" ;
	    } 
	}

	function MenuClick(page)
	{
	    if(page=="yhsearch")
	    {
	       top.mainFrame.I2.I2.location.href="yhsearch.do?f=1";
	    }
	    else if(page=="yhzlxg")
	    {
	       top.mainFrame.I2.I2.location.href="yhsearch.do?f=2";
	    }
	    else if(page=="list")
	    {
	       top.mainFrame.I2.I2.location.href="khlist.do";
	    }
	    else
	    {
	       top.mainFrame.I2.I2.location.href="tab\/"+page;
	    }
	}
</script>


<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
	    <td height="28" background="<%=path %>/images/main_40.gif">
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
	   	       <tr>
	               <td width="19%">&nbsp;</td>
	               <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
	           </tr>
	       </table>
	    </td>
	</tr>
	<!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">个人密码维护</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu1" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/cardUser/userinfo/userinfo.jsp'">修改密码</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    
    
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu2" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(2)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">卡片查询</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu2" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/cardJine.action?userId=<s:property value="#session.user.userId"/>'">余额查询</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	                  
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    
    
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu3" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(3)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">卡片充值</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu3" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/cardUser/card/chongzhiShen.jsp'">卡片充值</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu4" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(4)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">卡片消费</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu4" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/cardUser/card/xiaofeiAdd.jsp'">增加消费</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                  </table>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/xiaofeijilu.action?userId=<s:property value="#session.user.userId"/>'">消费记录</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
   
   
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu5" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(5)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">透支管理</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu5" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/touzhiMy.action?userId=<s:property value="#session.user.userId"/>'">我的透支</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    
    
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu6" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(6)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">销户管理</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu6" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/cardJine1.action?userId=<s:property value="#session.user.userId"/>'">销户</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu7" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(7)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">安全退出</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu7" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:window.top.location.href='<%=path %>/logout.jsp'">退出系统</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
</table>

