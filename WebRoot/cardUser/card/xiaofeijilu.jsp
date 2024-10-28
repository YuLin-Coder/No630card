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
           function xiaofeiDel(xiaofeiId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/xiaofeiDel.action?xiaofeiId="+xiaofeiId;
               }
           }
           function xiaofeiEdit(xiaofeiId)
           {
                   window.location.href="<%=path %>/xiaofeiEditPre.action?xiaofeiId="+xiaofeiId;
           }
       </script>
	</head>

	<body>
		<div class="body-box">
		    <form action="" method="post" name="formAdmin">
			<table class="pn-ltable" width="100%" cellspacing="1" cellpadding="0" border="0">
				<thead class="pn-lthead">
					<tr>
						<th>
							消费时间
						</th>
						<th>
							消费地点
						</th>
						<th>
						    消费金额
						</th>
						<th>
						    备注
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody class="pn-ltbody">
					<s:iterator value="#request.xiaofeiList" id="xiaofei">
					<tr onmouseover="Pn.LTable.lineOver(this);" onmouseout="Pn.LTable.lineOut(this);" onclick="Pn.LTable.lineSelect(this);">
						<td align="center">
							<s:property value="#xiaofei.xiaofeiShijian"/>
						</td>
						<td align="center">
							<s:property value="#xiaofei.xiaofeiDidian"/>
						</td>
						<td align="center">
						    <s:property value="#xiaofei.xiaofeiJine"/>
						</td>
						<td align="center">
						    <s:property value="#xiaofei.xiaofeiBeizhu"/>
						</td>
						<td class="pn-lopt">
							<a href="#" onclick="xiaofeiDel(<s:property value="#xiaofei.xiaofeiId"/>)" class="pn-loperator">删除</a>
							<a href="#" onclick="xiaofeiEdit(<s:property value="#xiaofei.xiaofeiId"/>)" class="pn-loperator">修改</a>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
			<%--<div class="pn-lnoresult">没有相关数据！</div>--%>
		    </form>
		</div>
	</body>
</html>
