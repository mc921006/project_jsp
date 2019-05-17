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
<script type="text/javascript" src="myjobTest001.js"></script> <!-- js파일을 쓰기 위한 -->
<link rel="stylesheet" href="myjobTest001.css"> <!-- css파일을 쓰기 위한 -->
<!------ Include the above in your HEAD tag ---------->
<!-- 메뉴 바 -->
<header class="top-line">
	<p class="logo">
		<a href="#">프로젝트 올리기</a>
	</p>
	<div class="login-btn">
		<a href="#">로그인 / 회원가입</a>
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
						<img class="w-100" style="width: 500; height: 450;" 
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKKJpY4SL1uRXNDDR_5se9yi88XfcpIkYZaTjMQix9SAIwdypgw">
						<!-- <img class="w-100" src="https://via.placeholder.com/500x450"> -->
					</div>
				</div></td>
		</tr>
		<tr>
			<td>
				<div class="project-info">
					<p class="text">모인 금액</p>
					<div class="project-div">
						2,000,000 <span>원</span> <span
							style="display: inline-block; font-size: 15px;">4%</span>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td><p class="text">남은 기간</p>
				<div class="project-div">30 일</div></td>
		</tr>
		<tr>
			<td><p class="text">후원자</p>
				<div class="project-div">30 명</div></td>
		</tr>
		<tr>
			<td><div class="funding-box">
					<div>
						<span class="funding-text">펀딩 진행중</span>
					</div>
					<br />
					<div>
						<span class="funding-info">목표 금액인 3,500,000원이 모여야만 결제됩니다.
							결제는 2019년 6월 12일에 다함께 진행됩니다.</span>
					</div>
				</div></td>
		</tr>
		<tr>
			<td style="padding-top: 10px;"><button type="button"
					class="btn btn-labeled btn-success">
					<span class="btn-label"><i
						class="glyphicon glyphicon-thumbs-up"></i></span>투자하기
				</button></td>
		</tr>
	</table>
	<div class="jbMenu" style="z-index: 1;" >
		<ul>
			<li><a href="myjobunder.jsp">스토리</a></li>
			<li><a href="myjobunder2.jsp">커뮤니티</a></li>
			<li><a href="myjobunder3.jsp">환불 및 정책</a></li>
		</ul>
		<hr class="my-hr3">
	</div>
</section>

