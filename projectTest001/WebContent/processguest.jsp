<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mgr" class="myjobTest001.guestMgr"/>
<jsp:useBean id="bean" class="myjobTest001.guestBean"/>
<jsp:setProperty property="*" name="bean"/>

<%
/* 	//���� �����ϴ� ip ��
	bean.setEmail(request.getRemoteAddr());
	if(bean.getSecret() == null) { //��б� üũ ����.
		bean.setSecret("0");
	} */
	mgr.insertGuestBook(bean);
	response.sendRedirect("myjobunder2.jsp");
%>