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
			<!-- ���� ���� ���� -->
			<%
					MemberBean mBean = mgr.getMember(ek); //�Ŀ��� Ȯ��
					 if(mBean.getPatronrank() == 0){ //�Ŀ��ڰ� �ƴϸ�
			%>
				<div class="inforide">
					<div style="margin-left: -15px">
						<div class="col-lg-3 col-md-4 col-sm-4 col-4 rideone">
							<img src="img/nopatron.png">
						</div>
						<div class="col-lg-9 col-md-8 col-sm-8 col-8 fontsty">
							<h4>�Ŀ��ڸ� ���� �� �� �ֽ��ϴ�.</h4>
						</div>
					</div>
				</div>
			<%} else { //�Ŀ��� %> 
			<div>
				<label style="margin: 5px 0px 0px 5px"><%=mBean.getEmail()%> �������</label>
				<textarea id="comment" rows="5" style="width: 480px; margin: 10px;"></textarea>
			</div>
			<div align="right" style="margin-right: 10px">
				<button type="submit" class="btn btn-primary" onclick="javascript:checkInputs()">�Է��ϱ�</button>
			</div>
			<%} %>
			<!-- ���� ���� �� -->
			<!-- ���� ����Ʈ ���� -->
			<%if(vlist.isEmpty()) %>
			<div class="well">
				<div class="user-row">
					<div class="div-test">
						<div class="img-test">
							<img class="img-circle" src="img/no.png" alt="User Pic">
						</div>
						<div class="text-info">
							<strong>���̵� ������ ��</strong><br> <span class="text-muted">�����
								���Ͽ� ���� ���� ���� �� �Դϴ�. ���Ͽ� ������ ������ ���ٰ� ǥ�ð� �Ǹ�, �� ȭ��ǥ�� ������ ����� ��
								���� �ֽ��ϴ�.</span>
						</div>
					</div>
						<!-- ���� ����Ʈ �� -->
					<div class="dropdown-user" data-for=".cyruxx">
						<!-- ��ư -->
						<i class="glyphicon glyphicon-comment"></i> ���
					</div>
					<hr style="border: 1px solid;">
				</div>
				<div class="row user-infos cyruxx">
					<!-- ���� ��� ���� -->
					<div
						class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
						<div class="panel panel-primary">
							<div class="panel-head">
								<h3 class="panel-title">��� ��</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
										<img class="img-circle" src="img/no.png" alt="User Pic">
									</div>
									<div class=" col-md-9 col-lg-9 hidden-xs hidden-sm">
										<strong>���̵� ������ ��</strong><br>
										<table class="table table-user-information">
											<tbody>
												<tr>
													<td>���⿡�� ����� �޸��� ���Դϴ�. ������ ������ �� for�� �Ἥ</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- ���� ��� �� -->
					</div>
				</div>
			</div>
		</div>
		<div class="fund-text">
			<%@include file="myjobside.jsp"%>
		</div>
	</div>
</body>