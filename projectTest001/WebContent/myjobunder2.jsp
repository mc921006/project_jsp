<%@page import="myjobTest001.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="myjobTest001.MemberMgr"%>
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
			<!-- 방명록 쓰기 시작 -->
			<%
					MemberBean mBean = mgr.getMember(ek); //후원자 확인
					 if(mBean.getPatronrank() == 0){ //후원자가 아니면
			%>
				<div class="inforide">
					<div style="margin-left: -15px">
						<div class="col-lg-3 col-md-4 col-sm-4 col-4 rideone">
							<img src="img/nopatron.png">
						</div>
						<div class="col-lg-9 col-md-8 col-sm-8 col-8 fontsty">
							<h4>후원자만 글을 쓸 수 있습니다.</h4>
						</div>
					</div>
				</div>
			<%} else { //후원자 %> 
			<div>
				<label style="margin: 5px 0px 0px 5px"><%=mBean.getEmail()%> 어서오세요</label>
				<textarea id="comment" rows="5" style="width: 480px; margin: 10px;"></textarea>
			</div>
			<div align="right" style="margin-right: 10px">
				<button type="submit" class="btn btn-primary" onclick="javascript:checkInputs()">입력하기</button>
			</div>
			<%} %>
			<!-- 방명록 쓰기 끝 -->
			<!-- 방명록 리스트 시작 -->
			<%if(vlist.isEmpty()) %>
			<div class="well">
				<div class="user-row">
					<div class="div-test">
						<div class="img-test">
							<img class="img-circle" src="img/no.png" alt="User Pic">
						</div>
						<div class="text-info">
							<strong>아이디가 나오는 곳</strong><br> <span class="text-muted">여기는
								방명록에 대한 글을 적는 곳 입니다. 방명록에 없으면 방명록이 없다고 표시가 되며, 밑 화살표를 누르면 댓글을 볼
								수가 있습니다.</span>
						</div>
					</div>
						<!-- 방명록 리스트 끝 -->
					<div class="dropdown-user" data-for=".cyruxx">
						<!-- 버튼 -->
						<i class="glyphicon glyphicon-comment"></i> 댓글
					</div>
					<hr style="border: 1px solid;">
				</div>
				<div class="row user-infos cyruxx">
					<!-- 방명록 댓글 시작 -->
					<div
						class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
						<div class="panel panel-primary">
							<div class="panel-head">
								<h3 class="panel-title">댓글 판</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
										<img class="img-circle" src="img/no.png" alt="User Pic">
									</div>
									<div class=" col-md-9 col-lg-9 hidden-xs hidden-sm">
										<strong>아이디가 들어오는 곳</strong><br>
										<table class="table table-user-information">
											<tbody>
												<tr>
													<td>여기에는 댓글이 달리는 곳입니다. 여러개 만들어야 함 for문 써서</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 방명록 댓글 끝 -->
					</div>
				</div>
			</div>
		</div>
		<div class="fund-text">
			<%@include file="myjobside.jsp"%>
		</div>
	</div>
</body>