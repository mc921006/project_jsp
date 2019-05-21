$('.top-line').after('<div class="mobile-menu d-xl-none">');
$('.top-menu').clone().appendTo('.mobile-menu');
$('.mobile-menu-btn').click(function(){
	$('.mobile-menu').stop().slideToggle();
});

/*동적 메뉴*/
$(document).ready(function() {
	//메뉴의 위치를 파악
	var jbOffset = $('.jbMenu').offset();
	//스크롤이 발생하면 함수를 실행
	$(window).scroll(function() {
		//문서의 스크롤바 위치가 메뉴의 수직 위치보다 아래라면
Updated upstream
		if ($(document).scrollTop() > jbOffset.top) {
		if ($(document).scrollTop()+10 > jbOffset.top) {
Stashed changes
			//메뉴에 jbFixed 클래스를 추가하여 고정
			$('.jbMenu').addClass('jbFixed');
		} else {
			//아니면 제거
			$('.jbMenu').removeClass('jbFixed');
		}
	});
});

/*방명록*/
$(document).ready(function() {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    //Click dropdown
    panelsButton.click(function() {
        //get data-for attribute
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        //current button
        var currentButton = $(this);
        idFor.slideToggle(400, function() {
            //Completed slidetoggle
            if(idFor.is(':visible'))
            {
                currentButton.html('<i class="glyphicon glyphicon-comment"></i>댓글');
            }
            else
            {
                currentButton.html('<i class="glyphicon glyphicon-comment"></i>댓글');
            }
        })
    });

    $('[data-toggle="tooltip"]').tooltip();

    $('button').click(function(e) {
        e.preventDefault();
        alert("This is a demo.\n :-)");
    });
});


/* 방명록 내용*/
function checkInputs() {
	frm = document.postFrm;
	if(frm.contents.value==""){
		alert("내용을 입력해 주세요.");
		frm.contents.focus();
		return;
	}
	frm.submit();
}