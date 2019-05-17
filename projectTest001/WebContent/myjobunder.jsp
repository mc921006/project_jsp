<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="myjobTest001.css">
<body>
	<%@include file="myjobTest001.jsp"%>

	<div class="story">
		<div class="story-text">
			<div class="story-div-text" style="height: 1500px;">스토리는 스마트 에디터를 통해 저장된 스토리들을 넣어 두는 곳</div>
		</div>
		<div class="fund-text">
			<%@include file="myjobside.jsp"%>
		</div>
	</div>
</body>