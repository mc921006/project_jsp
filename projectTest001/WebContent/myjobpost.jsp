<%@ page contentType="text/html; charset=EUC-KR"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>

.inforide {
  box-shadow: 1px 2px 8px 0px #f1f1f1;
  background-color: white;
  border-radius: 8px;
  height: 50px;
  width: 480px;
}

.rideone img {
	margin-top: -25px
}

.rideone {
	background-color: #a0a2a1;
	padding-top: 25px;
	border-radius: 8px 0px 0px 8px;
	text-align: center;
	height: 50px;
	margin-left: 15px;
}
.fontsty {
	margin-right: -15px;
}

.fontsty h4 {
	color: #6E6E6E;
	font-size: 25px;
	margin-top: 10px;
	text-align: center;
	margin-right: 30px;
}
</style>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!-- Icon Cards-->
<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-2 mt-4">
	<div class="inforide">
		<div style="margin-left: -15px">
			<div class="col-lg-3 col-md-4 col-sm-4 col-4 rideone">
				<img
					src="img/nopatron.png">
			</div>
			<div class="col-lg-9 col-md-8 col-sm-8 col-8 fontsty">
				<h4>후원자만 볼 수 있습니다.</h4>
			</div>
		</div>
	</div>
</div>
