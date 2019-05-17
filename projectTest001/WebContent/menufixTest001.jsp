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
    	  //메뉴의 위치를 파악
        var jbOffset = $( '.jbMenu' ).offset();
    	  //스크롤이 발생하면 함수를 실행
        $( window ).scroll( function() {
        	//문서의 스크롤바 위치가 메뉴의 수직 위치보다 아래라면
          if ( $( document ).scrollTop() > jbOffset.top ) {
        	  //메뉴에 jbFixed 클래스를 추가하여 고정
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
        	  //아니면 제거
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