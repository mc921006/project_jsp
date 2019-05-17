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
<link rel="stylesheet" href="myjobTest001.css">
<script>
	$(document).ready(function() {
		//메뉴의 위치를 파악
		var jbOffset = $('.jbMenu').offset();
		//스크롤이 발생하면 함수를 실행
		$(window).scroll(function() {
			//문서의 스크롤바 위치가 메뉴의 수직 위치보다 아래라면
			if ($(document).scrollTop() > jbOffset.top) {
				//메뉴에 jbFixed 클래스를 추가하여 고정
				$('.jbMenu').addClass('jbFixed');
			} else {
				//아니면 제거
				$('.jbMenu').removeClass('jbFixed');
			}
		});
	});
</script>
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
						<img class="w-100" src="https://via.placeholder.com/500x450">
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
	<div class="jbMenu">
		<ul>
			<li><a href="myjobTest001.jsp">스토리</a></li>
			<li><a href="myjobTest002.jsp">커뮤니티</a></li>
			<li><a href="myjobTest003.jsp">환불 및 정책</a></li>
		</ul>
	</div>
	<hr class="my-hr3">
</section>
<div class="story">
	<div class="story-text">게시판을 넣어야 하는 곳</div>
	<div class="fund-text">
		창작자 소개
		<div>team goodbam/기획,작사: 이드니 작곡:임준우, 보컬 :정성진, 뮤비:이건우 디자인: 펜낙
			/문의는 insta: good_bam_project</div><br/>
		<hr>
		선택할 수 있는 선물이 n개 있습니다.
		<div style="border: 1px solid;">
			<h3>10,000 원</h3>
			선물 이름 / 배송비 포함.
			<ul>
				<li>승진이1</li>
				<li>승진이2</li>
				<li>승진이3</li>
				<li>승진이4</li>
			</ul>
			예상 전달일 : 0000년 00월 00일
		</div>
		<br/>
		<div style="border: 1px solid;">
			<h3>20,000 원</h3>
			선물 이름 / 배송비 포함.
			<ul>
				<li>11</li>
				<li>22</li>
				<li>33</li>
				<li>44</li>
			</ul>
			예상 전달일 : 0000년 00월 00일
		</div>
		<br/>
		<div style="border: 1px solid;">
			<h3>30,000 원</h3>
			선물 이름 / 배송비 포함.
			<ul>
				<li>111</li>
				<li>222</li>
				<li>333</li>
				<li>444</li>
			</ul>
			예상 전달일 : 0000년 00월 00일
		</div>
	</div>
</div>
