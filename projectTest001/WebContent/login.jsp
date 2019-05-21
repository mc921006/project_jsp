<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="login" class="myjobTest001.MemberBean" scope="session" />n
<%
	request.setCharacterEncoding("EUC-KR");
	String email = (String) session.getAttribute("emailKey");
	String url = request.getParameter("url");
%>
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.email.value == "") {
			alert("이메일을 입력해 주세요.");
			document.loginFrm.email.focus();
			return;
		}
		var str = document.loginFrm.email.value;
		var atPos = str.indexOf('@');
		var atLastPos = str.lastIndexOf('@');
		var dotPos = str.indexOf('.');
		var spacePos = str.indexOf(' ');
		var commaPos = str.indexOf(',');
		var eMailSize = str.length;
		if (atPos > 1 && atPos == atLastPos && dotPos > 3 && spacePos == -1
				&& commaPos == -1 && atPos + 1 < dotPos
				&& dotPos + 1 < eMailSize)
			;
		else {
			alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
			document.loginFrm.email.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
<style>
.modal-dialog {
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%)
}
</style>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<%
				if (email != null) {
			%>
			<h3 class="text-center">
				<b><%=email%></b>님 환영합니다.<br />
			</h3>
		</div>
		<span class="pull-right" style="font-size: 18px"><a
			href="javascript:location.href='logout.jsp'">로그아웃</a></span><span
			style="font-size: 18px"><a
			href="javascript:location.href='myjobunder2.jsp?num=1'">프로젝트 확인</a></span>
		<%
			} else {
				email = request.getParameter("email");
		%>
	</div>
</div>
<div class="modal-dialog">
	<form name="loginFrm" method="post" action="loginProc.jsp?url<%=url%>">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="text-center">환영합니다!</h1>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<input type="email" name="email"
						value="<%=(email != null) ? email : ""%>" class="form-control input-lg"
						placeholder="이메일 주소 입력" />
				</div>

				<div class="form-group">
					<input type="password" name="pwd" class="form-control input-lg"
						placeholder="비밀번호 입력" />
				</div>

				<div class="form-group">
					<input type="button" class="btn btn-block btn-lg btn-primary"
						value="로그인" onclick="loginCheck()">&nbsp; <span
						class="pull-right"><a
						href="javascript:location.href='member.jsp'">회원가입</a></span><span><a
						href="javascript:location.href='passwordfind.jsp'">혹시 비밀번호를
							잊으셨나요?</a></span>
				</div>
			</div>
		</div>
		<input type="hidden" name="url" value="<%=url%>">
	</form>
	<%
		}
	%>
</div>
