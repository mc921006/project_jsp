$('.top-line').after('<div class="mobile-menu d-xl-none">');
$('.top-menu').clone().appendTo('.mobile-menu');
$('.mobile-menu-btn').click(function(){
	$('.mobile-menu').stop().slideToggle();
});

/*���� �޴�*/
$(document).ready(function() {
	//�޴��� ��ġ�� �ľ�
	var jbOffset = $('.jbMenu').offset();
	//��ũ���� �߻��ϸ� �Լ��� ����
	$(window).scroll(function() {
		//������ ��ũ�ѹ� ��ġ�� �޴��� ���� ��ġ���� �Ʒ����
Updated upstream
		if ($(document).scrollTop() > jbOffset.top) {
		if ($(document).scrollTop()+10 > jbOffset.top) {
Stashed changes
			//�޴��� jbFixed Ŭ������ �߰��Ͽ� ����
			$('.jbMenu').addClass('jbFixed');
		} else {
			//�ƴϸ� ����
			$('.jbMenu').removeClass('jbFixed');
		}
	});
});

/*����*/
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
                currentButton.html('<i class="glyphicon glyphicon-comment"></i>���');
            }
            else
            {
                currentButton.html('<i class="glyphicon glyphicon-comment"></i>���');
            }
        })
    });

    $('[data-toggle="tooltip"]').tooltip();

    $('button').click(function(e) {
        e.preventDefault();
        alert("This is a demo.\n :-)");
    });
});


/* ���� ����*/
function checkInputs() {
	frm = document.postFrm;
	if(frm.contents.value==""){
		alert("������ �Է��� �ּ���.");
		frm.contents.focus();
		return;
	}
	frm.submit();
}