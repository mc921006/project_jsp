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
			alert("�̸����� �Է��� �ּ���.");
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
			alert('E-mail�ּ� ������ �߸��Ǿ����ϴ�.\n\r�ٽ� �Է��� �ּ���!');
			document.loginFrm.email.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
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
				<b><%=email%></b>�� ȯ���մϴ�.<br />
			</h3>
		</div>
		<span class="pull-right" style="font-size: 18px"><a
			href="javascript:location.href='logout.jsp'">�α׾ƿ�</a></span><span
			style="font-size: 18px"><a
			href="javascript:location.href='myjobunder2.jsp?num=1'">������Ʈ Ȯ��</a></span>
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
				<h1 class="text-center">ȯ���մϴ�!</h1>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<input type="email" name="email"
						value="<%=(email != null) ? email : ""%>" class="form-control input-lg"
						placeholder="�̸��� �ּ� �Է�" />
				</div>

				<div class="form-group">
					<input type="password" name="pwd" class="form-control input-lg"
						placeholder="��й�ȣ �Է�" />
				</div>

				<div class="form-group">
					<input type="button" class="btn btn-block btn-lg btn-primary"
						value="�α���" onclick="loginCheck()">&nbsp; <span
						class="pull-right"><a
						href="javascript:location.href='member.jsp'">ȸ������</a></span><span><a
						href="javascript:location.href='passwordfind.jsp'">Ȥ�� ��й�ȣ��
							�����̳���?</a></span>
				</div>
			</div>
		</div>
		<input type="hidden" name="url" value="<%=url%>">
	</form>
	<%
		}
	%>
</div>
