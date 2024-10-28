<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

		<link rel="stylesheet" href="<%=path%>/css/front.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>	
		<script type="text/javascript" src="<%=path%>/js/pony.js"></script>
		<script type="text/javascript" src="<%=path%>/js/front.js"></script>
		<script type="text/javascript" src="<%=path%>/js/admin.js"></script>
		

		<style type="text/css">
	       .lbody{background:url(<%=path%>/img/lbg.jpg) right repeat-y #F4F7FB;color:#666666;margin-right:6px;}
	       .lmenu a{display:block;padding:7px 0px 7px 30px;; background:url(<%=path%>/img/circle.gif) no-repeat 15px -1px;}
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>
       <script language="javascript">
           function adminDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/adminDel.action?userId="+userId;
               }
           }
           
           function adminAdd()
           {
                 var url="<%=path %>/admin/index/adminAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
       </script>
	</head>

	<body>
		<div class="body-box">
		    <form action="" method="post" name="formAdmin">
			<table class="pn-ltable" width="100%" cellspacing="1" cellpadding="0" border="0">
				<thead class="pn-lthead">
					<tr>
						<%--<th width="20px">
							<input type="checkbox" id="allCheck" value="checkbox" onclick="Pn.checkBox('ids',this.checked);" />
						</th>--%>
						<th>
							用户ID
						</th>
						<th>
							充值金额
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody class="pn-ltbody">
					<s:iterator value="#request.chongzhiList" id="chongzhi">
					<tr onmouseover="Pn.LTable.lineOver(this);" onmouseout="Pn.LTable.lineOut(this);" onclick="Pn.LTable.lineSelect(this);">
						<%--<td align="center">
							<input type="checkbox" name="ids" value="1" />
						</td>--%>
						<td align="center">
							<s:property value="#chongzhi.userId"/>
						</td>
						<td align="center">
							<s:property value="#chongzhi.money"/>
						</td>
						<td class="pn-lopt">
							<a href="<%=path %>/chongzhiAdd.action?userId=<s:property value="#chongzhi.userId"/>&money=<s:property value="#chongzhi.money"/>&chongzhiId=<s:property value="#chongzhi.chongzhiId"/>" class="pn-loperator">充值</a>
						    &nbsp;&nbsp;&nbsp;&nbsp;
						    <a href="<%=path %>/chongzhiDel.action?chongzhiId=<s:property value="#chongzhi.chongzhiId"/>" class="pn-loperator">删除</a>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
			<%--<div class="pn-lnoresult">没有相关数据！</div>--%>
			<div class="pn-sp">
				<div class="clear"></div>
			</div>
		    </form>
		</div>
	</body>
</html>
