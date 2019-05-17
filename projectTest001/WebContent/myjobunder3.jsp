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
			<div class="story-div-text">
				<span class="refund-text" style="z-index: 2;">
				<i class="glyphicon glyphicon-info-sign">  이 프로젝트의 환불 및 교환 정책</i></span>
				<ol>
					<li>단순 변심에 의한 환불은 불가능합니다.</li>
					<li>예상 전달일로부터 10일 이상 전달 지연 시 수수료 제외 후 환불 가능합니다.</li>
					<li>파손, 불량품 수령시 3일 이내로 교환이 가능합니다. 교환 시 발생하는 배송비는 진행자 부담입니다.</li>
					<li>후원자가 배송지를 잘못 기재하거나 진행자에게 사전 고지 없이 배송지를 수정하여 배송사고가 발생할 경우
						진행자는 최대 1번까지 재발송 해 드립니다. 배송비 부담은 후원자에게 있습니다.</li>
				</ol>
			</div>
		</div>
		<div class="fund-text">
			<%@include file="myjobside.jsp"%>
		</div>
	</div>
</body>