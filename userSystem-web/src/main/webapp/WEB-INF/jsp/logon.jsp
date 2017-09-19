<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String contextPath = request.getContextPath(); %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户登录</title>
	<%--<script type="text/javascript" src="<%=contextPath %>/js/md5.js"></script>	--%>
	<%--<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.12.3.min.js"></script>	--%>
	<script type="text/javascript">

	</script>
</head>
<body>
  <form action="" id="subForm" method="post">
	<table border="0" style="margin-top: 50px" align="center" width="50%">
		<tr height="50px">
			<%--<td colspan="2" align="center"><img alt="" src="<%=contextPath %>/images/logo.png" /></td>--%>
		</tr>
		<tr>
		</tr>
		<tr>
			<td align="right" width="40%" style="font-weight: bold;">用户名：</td>
			<td><input type="text" maxlength="20" size="30" name="userName" id="userName" value=""/></td>
		</tr>
		<tr>
			<td align="right" style="font-weight: bold;">密&nbsp;&nbsp;&nbsp;码：</td>
			<td>
				<input type="password" maxlength="20" size="30" name="password" id="password" value=""/>
				<div style="color: red;font-weight: bold;" id="errorMsgDiv">用户名或密码错误！</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="登 录" id="loginBtn" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="重 置" id="resetBtn" />
			</td>
		</tr>
	</table>
	<input type="hidden" name="errorFlag" id="errorFlag" value="${_LOGON_FLAG }"/>
  </form>
  <form action="logon.action" id="subForm1" method="post">
  	 <input type="hidden" name="userNameHid" id="userNameHid" value=""/>
  	 <input type="hidden" name="passwordHid" id="passwordHid" value=""/>
  	 <input type="hidden" name="checkCodeHid" id="checkCodeHid" value=""/>
  </form>
</body>
</html>