$(function(){
    //로그인화면 ip보안 버튼
    $('.circle').click(function(){
        $(this).toggleClass('on');

        if($(this).hasClass('on')){
            $('.ipcheckbox').css('background','#09ab5c');
            $('.textOff').hide();
            $('.textOn').show();
        }else{
            $('.ipcheckbox').css('background','#a5adb8');
            $('.textOff').show();
            $('.textOn').hide();
        }
    });

    //회원가입화면 정보입력확인
    $('.ulcontainer').on('focusout','li input',function(){
        const inputVal = $(this).val().trim();
        const $li = $(this).closest('li');
        
        if($(this).is('[required]')){
            if(inputVal == ""){
                $li.css('box-shadow','0 0 0 1px red inset');
            }else if(inputVal != "") {
                $li.css('box-shadow','0 0 0 1px #03c75a inset');
            }
        }else{
            $li.css('box-shadow','0 0 0 1px #03c75a inset');
        }
        
    });
});