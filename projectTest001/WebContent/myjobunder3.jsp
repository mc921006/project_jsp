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
				<i class="glyphicon glyphicon-info-sign">  �� ������Ʈ�� ȯ�� �� ��ȯ ��å</i></span>
				<ol>
					<li>�ܼ� ���ɿ� ���� ȯ���� �Ұ����մϴ�.</li>
					<li>���� �����Ϸκ��� 10�� �̻� ���� ���� �� ������ ���� �� ȯ�� �����մϴ�.</li>
					<li>�ļ�, �ҷ�ǰ ���ɽ� 3�� �̳��� ��ȯ�� �����մϴ�. ��ȯ �� �߻��ϴ� ��ۺ�� ������ �δ��Դϴ�.</li>
					<li>�Ŀ��ڰ� ������� �߸� �����ϰų� �����ڿ��� ���� ���� ���� ������� �����Ͽ� ��ۻ�� �߻��� ���
						�����ڴ� �ִ� 1������ ��߼� �� �帳�ϴ�. ��ۺ� �δ��� �Ŀ��ڿ��� �ֽ��ϴ�.</li>
				</ol>
			</div>
		</div>
		<div class="fund-text">
			<%@include file="myjobside.jsp"%>
		</div>
	</div>
</body>