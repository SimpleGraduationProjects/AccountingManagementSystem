<%@include file="/common/sub_header.jsp"%>	
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>	
	
	
	
<script language="JavaScript">	
<!--	
function ask(msg) {	
	if( msg=='' ) {	
		msg='警告：是否删除？';	
	}	
	if (confirm(msg)) {	
		return true;	
	} else {	
		return false;	
	}	
}	
function query() {		
	var action = "<%=path%>/user!queryUser.action";		
	document.forms[0].action = action;		
	document.forms[0].submit();		
}		
//-->	
</script>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">	
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
<link href="<%=path%>/css/list.css" rel="stylesheet" type="text/css" />	
	</HEAD>	
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">	
	
		<br />	
	
	
		<table cellpadding='3' cellspacing='1' border='0' class='tableBorder'	
			align=center>	
			<tr>	
				<th width="100%" height=25 class='tableHeaderText'>	
					学生管理列表	
				</th>	
	
				<tr>	
					<td height="400" valign="top" class='forumRow'>	
						<br>	
						<table width="95%" border="0" align="center" cellpadding="0"	
							cellspacing="0">	
							<tr>	
								<td height="25" class='forumRowHighLight'>	
									&nbsp;
									
								</td>	
							</tr>	
							<tr>	
								<td height="30"></td>	
							</tr>	
						</table>	
	
	
						<table width="95%" border="0" align="center" cellpadding="0"	
							cellspacing="2">	
							<tr>	
								<td width="10%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										登陆号	
									</div>	
								</td>	
								<td width="10%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										姓名
									</div>	
								</td>	
								<td width="10%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										性别
									</div>	
								</td>
								<td width="10%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										年龄
									</div>	
								</td>	
								
								<td width="13%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										电话
									</div>	
								</td>
								<td width="13%" height="30" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										注册时间
									</div>	
								</td>
									
								<td width="9%" class="TitleHighlight">	
									<div align="center" style="font-weight: bold; color: #ffffff">	
										操作	
									</div>	
								</td>	
							</tr>	
								
							<c:forEach items="${user_list}" var="user">	
	
	
	
	
							<tr>	
								<td height="40" class='forumRow'>	
									<div align="center">	
										${user.name}	
									</div>	
								</td>	
								<td class='forumRow'>	
									<div align="center">	
										${user.rname}	
									</div>	
								</td>	
								<td class='forumRow'>	
									<div align="center">	
										${user.sex}	
									</div>	
								</td>	
								<td class='forumRow'>	
									<div align="center">	
										${user.age}	
									</div>	
								</td>	
								 	
							 
								<td class='forumRow'>	
									<div align="center">	
										${user.tel}	
									</div>	
								</td>	
								<td class='forumRow'>	
									<div align="center">	
										${user.adddate}	
									</div>	
								</td>	
								 
								 	
								<td class='forumRow'>	
									<div align="center">	
									
										
										<a href="javascript:if(ask('警告：是否删除？')) location.href='<%=path%>/user!delUser.action?id=${user.id}';">删除</a>	
									</div>	
								</td>	
							</tr>	
								
							</c:forEach>	
	
	
							<tr>	
								<td height="35" colspan="8">	
									<div align="center">	
										<table width='100%'>	
											<tr>	
												<td align='center' height=25>	
														
												</td>	
											</tr>	
										</table>	
									</div>	
								</td>	
							</tr>	
						</table>	
						<table width="95%" border="0" align="center" cellpadding="0"	
							cellspacing="0">	
							<tr>	
								<td height="20" class='forumRow'>	
									&nbsp;	
								</td>	
							</tr>	
							<tr>	
								<td height="25" class='forumRowHighLight'>	
									&nbsp;| 搜索	
								</td>	
							</tr>	
							<tr>	
								<td height="70">	
								<form name="form1" action="user!queryStu.action" method="post">		
										<div align="center">	
											&nbsp;	
											<label>	
											</label>	
											<label>	
												<input type="text" name="user.name" value="${user.name}"		
											 />		
											</label>	
											<label>	
												&nbsp;	
												<input name="Submit" onclick="query();" type="button"		
											 value="查 询" />		
											</label>	
										</div>	
									</form>	
								</td>	
							</tr>	
						</table>	
						<br>	
					</td>	
				</tr>	
		</table>	
