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
		//�޴��� ��ġ�� �ľ�
		var jbOffset = $('.jbMenu').offset();
		//��ũ���� �߻��ϸ� �Լ��� ����
		$(window).scroll(function() {
			//������ ��ũ�ѹ� ��ġ�� �޴��� ���� ��ġ���� �Ʒ����
			if ($(document).scrollTop() > jbOffset.top) {
				//�޴��� jbFixed Ŭ������ �߰��Ͽ� ����
				$('.jbMenu').addClass('jbFixed');
			} else {
				//�ƴϸ� ����
				$('.jbMenu').removeClass('jbFixed');
			}
		});
	});
</script>
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
						<img class="w-100" src="https://via.placeholder.com/500x450">
					</div>
				</div></td>
		</tr>
		<tr>
			<td>
				<div class="project-info">
					<p class="text">���� �ݾ�</p>
					<div class="project-div">
						2,000,000 <span>��</span> <span
							style="display: inline-block; font-size: 15px;">4%</span>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td><p class="text">���� �Ⱓ</p>
				<div class="project-div">30 ��</div></td>
		</tr>
		<tr>
			<td><p class="text">�Ŀ���</p>
				<div class="project-div">30 ��</div></td>
		</tr>
		<tr>
			<td><div class="funding-box">
					<div>
						<span class="funding-text">�ݵ� ������</span>
					</div>
					<br />
					<div>
						<span class="funding-info">��ǥ �ݾ��� 3,500,000���� �𿩾߸� �����˴ϴ�.
							������ 2019�� 6�� 12�Ͽ� ���Բ� ����˴ϴ�.</span>
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
	<div class="jbMenu">
		<ul>
			<li><a href="myjobTest001.jsp">���丮</a></li>
			<li><a href="myjobTest002.jsp">Ŀ�´�Ƽ</a></li>
			<li><a href="myjobTest003.jsp">ȯ�� �� ��å</a></li>
		</ul>
	</div>
	<hr class="my-hr3">
</section>
<div class="story">
	<div class="story-text">�Խ����� �־�� �ϴ� ��</div>
	<div class="fund-text">
		â���� �Ұ�
		<div>team goodbam/��ȹ,�ۻ�: �̵�� �۰�:���ؿ�, ���� :������, �º�:�̰ǿ� ������: �泫
			/���Ǵ� insta: good_bam_project</div><br/>
		<hr>
		������ �� �ִ� ������ n�� �ֽ��ϴ�.
		<div style="border: 1px solid;">
			<h3>10,000 ��</h3>
			���� �̸� / ��ۺ� ����.
			<ul>
				<li>������1</li>
				<li>������2</li>
				<li>������3</li>
				<li>������4</li>
			</ul>
			���� ������ : 0000�� 00�� 00��
		</div>
		<br/>
		<div style="border: 1px solid;">
			<h3>20,000 ��</h3>
			���� �̸� / ��ۺ� ����.
			<ul>
				<li>11</li>
				<li>22</li>
				<li>33</li>
				<li>44</li>
			</ul>
			���� ������ : 0000�� 00�� 00��
		</div>
		<br/>
		<div style="border: 1px solid;">
			<h3>30,000 ��</h3>
			���� �̸� / ��ۺ� ����.
			<ul>
				<li>111</li>
				<li>222</li>
				<li>333</li>
				<li>444</li>
			</ul>
			���� ������ : 0000�� 00�� 00��
		</div>
	</div>
</div>
