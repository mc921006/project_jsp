<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mgr" class="myjobTest001.MemberMgr"/>
<jsp:useBean id="login" class="myjobTest001.MemberBean" scope="session"/>
<jsp:setProperty name="login" property="*"/> 
<%
	  request.setCharacterEncoding("EUC-KR");
	  String cPath = request.getContextPath();
	  
	  String url="login.jsp";
		if(request.getParameter("url")!=null&&
				!request.getParameter("url").equals("null")){
			url=request.getParameter("url");
		}
		boolean flag = mgr.loginMember(login.getEmail(), login.getPwd());
		String msg = "로그인 실패";
		if(flag){
			msg = "로그인 성공";
			login = mgr.getMember(login.getEmail());
			session.setAttribute("emailKey",login.getEmail());
			session.setAttribute("login", login); //id부터 모든 정보가 session에 들어가있음.
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "login.jsp";
</script>