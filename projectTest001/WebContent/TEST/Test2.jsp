<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="Test2.js"></script>
<!-- js파일을 쓰기 위한 -->
<link rel="stylesheet" href="Test2.css">
<!-- css파일을 쓰기 위한 -->
<!------ Include the above in your HEAD tag ---------->

<br>
<br>
<div class="container">
	<div
		class="well">
		<div class="user-row">
			<div class="">
				<img class="img-circle"
					src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
					alt="User Pic">
			</div>
			<div class="text-info">
				<strong>아이디가 나오는 곳</strong><br> <span class="text-muted">여기는 방명록에 대한 글을 적는 곳 입니다. 
				방명록에 없으면 방명록이 없다고 표시가 되며, 밑 화살표를 누르면 댓글을 볼 수가 있습니다.</span>
			</div>
			<div class="dropdown-user" 
				data-for=".cyruxx"> <!-- 버튼 화살표 -->
				<i class="glyphicon glyphicon-comment"></i> 댓글
			</div>
		</div>
		<div class="row user-infos cyruxx"> <!-- 방명록 댓글 시작 -->
			<div
				class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">User information</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
								<img class="img-circle"
									src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
									alt="User Pic">
							</div>
							<div class="col-xs-2 col-sm-2 hidden-md hidden-lg">
								<img class="img-circle"
									src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
									alt="User Pic">
							</div>
							<div class="col-xs-10 col-sm-10 hidden-md hidden-lg">
								<strong>Cyruxx</strong><br>
								<dl>
									<dt>User level:</dt>
									<dd>Administrator</dd>
									<dt>Registered since:</dt>
									<dd>11/12/2013</dd>
									<dt>Topics</dt>
									<dd>15</dd>
									<dt>Warnings</dt>
									<dd>0</dd>
								</dl>
							</div>
							<div class=" col-md-9 col-lg-9 hidden-xs hidden-sm">
								<strong>Cyruxx</strong><br>
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td>User level:</td>
											<td>Administrator</td>
										</tr>
										<tr>
											<td>Registered since:</td>
											<td>11/12/2013</td>
										</tr>
										<tr>
											<td>Topics</td>
											<td>15</td>
										</tr>
										<tr>
											<td>Warnings</td>
											<td>0</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<button class="btn btn-sm btn-primary" type="button"
							data-toggle="tooltip" data-original-title="Send message to user">
							<i class="glyphicon glyphicon-envelope"></i>
						</button>
						<span class="pull-right">
							<button class="btn btn-sm btn-warning" type="button"
								data-toggle="tooltip" data-original-title="Edit this user">
								<i class="glyphicon glyphicon-edit"></i>
							</button>
							<button class="btn btn-sm btn-danger" type="button"
								data-toggle="tooltip" data-original-title="Remove this user">
								<i class="glyphicon glyphicon-remove"></i>
							</button>
						</span>
					</div>
				</div> <!-- 방명록 댓글 끝 -->
			</div>
		</div>
	</div>
</div>