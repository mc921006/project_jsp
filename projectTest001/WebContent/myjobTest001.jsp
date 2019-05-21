<%@page import="myjobTest001.guestBean"%>
<%@page import="java.util.Vector"%>
<%@page import="myjobTest001.guestMgr"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="myjobTest001.productBean"%>
<%@page import="myjobTest001.UtilMgr"%>
<%@page import="myjobTest001.MemberMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="pmgr" class="myjobTest001.productMgr" />
<jsp:useBean id="mgr" class="myjobTest001.MemberMgr"/>
<jsp:useBean id="login" class="myjobTest001.MemberBean" scope="session"/>
<%
	request.setCharacterEncoding("EUC-KR");
	int num = Integer.parseInt(request.getParameter("num")); //������Ʈ ��ȣ
	productBean bean = pmgr.getProduct(num);
	String ek = (String)session.getAttribute("emailKey");
	if(ek == null){
		response.sendRedirect("login.jsp");
	}
	guestMgr gmgr = new guestMgr();
	Vector<guestBean> vlist = gmgr.listGuestBook(login.getEmail());
%>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="myjobTest001.js"></script>
<!-- js������ ���� ���� -->
<link rel="stylesheet" href="myjobTest001.css">
<!-- css������ ���� ���� -->
<!------ Include the above in your HEAD tag ---------->

<!-- �޴� �� -->
<header class="top-line">
	<p class="logo">
		<a href="#">������Ʈ �ø���</a>
	</p>
	<div class="login-btn">
		<a href="#">�α��� / ȸ������</a>
	</div>
	<div class="main-menu">
		<a href="#">I . Funding . U</a>
	</div>
</header>

<nav>
	<br /> <br /> <br /> <br />
</nav>

<section>
	<table>
		<tr>
			<td rowspan="6"><div class="project-img">
					<div class="img-block">
						<%
							if (bean.getProimage() == null) {
						%>
						<img class="w-100" style="width: 500; height: 450;"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJcAAAB5CAMAAAADD0O5AAAARVBMVEX///+UlJSRkZGXl5eNjY2KiorX19fc3Ny3t7eqqqqzs7Pt7e35+fnk5OSvr6/ExMR/f3/z8/POzs6hoaG9vb11dXViYmLYQsWaAAACFklEQVR4nO2Y7W6jMBBFx98Q28HGTt//UXdMWm2gYauVqky1e09CBPODHF0bM0AEAAAAAAAAAAAAAAAAQI48zUemKi1F5PUTjLhYcEpZ94BVjO3CWl4rbUJ+pLGXnuS1WtyVupb34kHUbT+VLpZLwl6clmppV+qs1b0V9RpaJtT4mzq0riTrNa7Ew7XotLJsFCS9onqG7knYK4yFyuzggqsk7OWtaodSssqNRUPa63KsmbuX6LznP4fXX/CHcRSeX6d5/VSvnzq/sE484TyvaPh2JKG0cZpX5fuRzhJKG2d5VaOVCxJGd5572cBagmmdeakxiIJpnc2v0eqIag2v+VgbLZnoINLmpeY+PbI9OcqmxavUaO/3T//ygzjwltGaN3v/4X0jr8WJhU+Ivy4BAADwP6AaZf5aN4+3mH1NpiXqjjucefQ+3ZWVZq2ur/YqJQZHeqlm5aPrksotkrt5qq5UCi6GQmqJ8csTfTPOrMFSiTRd3r2Mp2I95ZnbwrURraT8q604r1XnvdfSY2O3Zbn04RUrmev68qanZOf1o9cttLWzVwu+sVc1JZm5vzyxUudp8+ofXkm3zF6uNTfySq6KjGNdC3sFav3di9obGZ9d8CVylFJeMb1pWlwr8cOr8xUYxoxXa1LGuGScmdOXZ/peuF2uaTTS21FKo5DGJ21HlDPv14quGgAAAAAAAAAAAAAA8K/yC8L5F1+X/2vcAAAAAElFTkSuQmCC";>
						<%
							}else {
						%>
								<img class="w-100" style="width: 500; height: 450;"
							src="img/<%=bean.getProimage()%>">
						<%}
						%>

						<!-- <img class="w-100" src="https://via.placeholder.com/500x450"> -->
					</div>
				</div></td>
		</tr>
		<tr>
			<td>
				<div class="project-info">
					<p class="text">���� �ݾ�</p>
					<div class="project-div">
						<%=UtilMgr.monFormat(bean.getProprice())%>��<span
							style="display: inline-block; font-size: 15px;">4%</span>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td><p class="text">���� �Ⱓ</p>
				<div class="project-div"><%=bean.getProdate()%>��</div></td>
		</tr>
		<tr>
			<td><p class="text">�Ŀ���</p>
				<div class="project-div"><%=bean.getPatron()%>
					��
				</div></td>
		</tr>
		<tr>
			<td><div class="funding-box">
					<div>
						<span class="funding-text">�ݵ� ������</span>
					</div>
					<br />
					<div>
					<span class="funding-info">��ǥ �ݾ��� <%=UtilMgr.monFormat(bean.getGoalprice())%> ���� �𿩾߸� �����˴ϴ�.
							������ <span id="date"></span>�� ���Բ� ����˴ϴ�.</span>
					</div>
				</div></td>
		</tr>
		<tr>
			<td style="padding-top: 10px;"><button type="button"
					class="btn btn-labeled btn-success">
					<span class="btn-label"><i
						class="glyphicon glyphicon-thumbs-up"></i></span>�����ϱ�
				</button></td>
		</tr>
	</table>
<<<<<<< Updated upstream
	<div class="jbMenu">
=======
	<div class="jbMenu"  style="z-index: 1;">
>>>>>>> Stashed changes
		<ul>
			<li><a href="myjobunder.jsp">���丮</a></li>
			<li><a href="myjobunder2.jsp">Ŀ�´�Ƽ</a></li>
			<li><a href="myjobunder3.jsp">ȯ�� �� ��å</a></li>
		</ul>
	</div>
	<hr class="my-hr3">
</section>

<script>
 	var fdate = '<%= bean.getFindate()%>';
	(function datetest() {
		var yy = parseInt(fdate.substr(0, 4), 10);
	    var mm = parseInt(fdate.substr(5, 2), 10);
	    var dd = parseInt(fdate.substr(8), 10);
	 
	    d = new Date(yy, mm - 1, dd - 7);
	    
	    yy = d.getFullYear();

	    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;

	    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;

	    fdate = yy + '-' +  mm  + '-' + dd;
	    
	    document.getElementById("date").innerText = fdate.toString();
	})();
</script>

