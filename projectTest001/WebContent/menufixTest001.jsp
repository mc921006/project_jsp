<%@ page contentType="text/html;charset=EUC-KR" %>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>jQuery</title>
<style>
body {
	margin: 0px;
	padding: 0px;
}

.jbTitle {
	text-align: center;
}

.jbMenu {
	text-align: center;
	background-color: yellow;
	padding: 10px 0px;
	width: 100%;
}

.jbContent {
	height: 2000px;
}

.jbFixed {
	position: fixed;
	top: 0px;
}
</style>
<script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
      $( document ).ready( function() {
    	  //�޴��� ��ġ�� �ľ�
        var jbOffset = $( '.jbMenu' ).offset();
    	  //��ũ���� �߻��ϸ� �Լ��� ����
        $( window ).scroll( function() {
        	//������ ��ũ�ѹ� ��ġ�� �޴��� ���� ��ġ���� �Ʒ����
          if ( $( document ).scrollTop() > jbOffset.top ) {
        	  //�޴��� jbFixed Ŭ������ �߰��Ͽ� ����
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
        	  //�ƴϸ� ����
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
      } );
    </script>
</head>
<body>
	<div class="jbTitle">
		<h1>Site Title</h1>
	</div>
	<div class="jbMenu">
		<p>First Menu Second Menu Third Menu Fourth Menu</p>
	</div>
	<div class="jbContent"></div>
</body>
</html>