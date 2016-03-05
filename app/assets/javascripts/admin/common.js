
function remove_activate_tab(){
     $(".dashboard").removeClass('activate');
      $(".reports").removeClass('activate');
       $(".que-n-ans").removeClass('activate');
        $(".candidate").removeClass('activate');
        $(".dashboard-menu li").removeClass('active');
}

$(document).ready(function(){
    $("#dashboard_block").click(function(){
        remove_activate_tab();
        $(this).addClass('active')
        $(".dashboard").addClass('activate');
    });

    $("#report_block").click(function(){
        remove_activate_tab();
        $(this).addClass('active')
        $(".reports").addClass('activate');
    });

    $("#question_block").click(function(){
        remove_activate_tab();
        $(this).addClass('active')
        $(".que-n-ans").addClass('activate');
    });

    $("#candidate_block").click(function(){
        remove_activate_tab();
        $(this).addClass('active')
        $(".candidate").addClass('activate');
    })





    $(".existing-candidate").click(function(){
        $(".input-group.exiting-email-input").toggleClass('display-block');
    });
    $(".new-user").click(function(){
        $(this).hide();
        $('.exiting-email-input').removeClass('display-block');
        $(".existing-candidate").hide();
        $(".new-candidate-registration").toggleClass('display-block')
    });

    //$(".send-invite").click(function(){
    //    $(".existing-candidate").show();
    //    $(".new-user").show();
    //    $(".new-candidate-registration").removeClass('display-block');
    //})
})