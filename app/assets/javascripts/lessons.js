
$(document).ready(function() {
    // var mainBox = document.getElementsByClassName("main-lesson-box");
    $("#question-box-3").show().siblings().hide()

    // $('#questions_wrapper').not("#question-box-1").hide();
    // $('id="button_1"').click(function() {
    //     $('#wrapper').show();
    //     $('id="button_2"').click(function() {
    //         $('#wrapper').not(":eq(#box_5)").hide();
    //     });


        // $(mainBox).children().hide();
    // $(mainBox[0]).children().show();
    // $(mainBox).each(function(i,e) {
    //     $(this).delay(i*400).fadeIn();
    // });
});


$('#check_answer').click(function (e) {
    e.preventDefault();

    var question_id = document.getElementById("question_id").value;
    var user_id = document.getElementById("user_id").value;
    var learning_process_state_id = document.getElementById("learning_process_state_id").value;

    var radios = document.getElementsByName('answer');
    var checkedButton;

    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            checkedButton = radios[i].value;
            break;
        }
    }

    $.ajax({
        url: '/en/answer',
        type: 'POST',
        dataType: "json",
        data: { answer: { answer: checkedButton, question_id: question_id, user_id: user_id, learning_process_state_id: learning_process_state_id } },
        success: function (check) {
            var messageBox = document.createElement('div');
            messageBox.setAttribute("id", "message_box");
            messageBox.innerHTML = check.message;

            var boxHolder = document.getElementById("check-message");
            boxHolder.appendChild(messageBox);

            var checkButton = document.getElementById("check_answer");
            checkButton.value = "Next";
        }
    })
});

