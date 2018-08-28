
$(document).ready(function() {
    var current_question = 1;
    var collectionSize = document.getElementById("questions_wrapper").children.length;

    $(`#question-box-${current_question}`).show().siblings().hide();

    $('#questions_wrapper').on('click', '.check_answer', function (e) {
        e.preventDefault();

        var question_id = document.getElementById("question_id").value;
        var user_id = document.getElementById("user_id").value;
        var learning_process_state_id = document.getElementById("learning_process_state_id").value;
        var radios = document.getElementsByName('answer');
        var checkedButton;
        var checkButton = document.getElementsByClassName("check_answer");

        if (checkButton[0].value === "Next") {
            var checkButton = document.querySelectorAll(".check_answer");
            checkButton.forEach(function(e) {
                e.value = "Check";
            });
            current_question += 1;
            $(`#question-box-${current_question}`).show().siblings().hide();
            return;
        }

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
                var messageBox = document.querySelectorAll(".check-message");
                var box = document.createElement('div');
                box.id = "box";
                if (check.message == 'Answer is correct') {
                    var box = document.createElement('div');
                    box.style.height = "50px";
                    box.style.width = "100%";
                    box.style.backgroundColor = "#ADFF2F";
                    box.style.borderRadius = "10px";
                    box.style.paddingTop = "12px";
                    box.style.fontSize = "15px";
                    box.style.fontWeight = "bold";
                    box.innerHTML = check.message;
                    messageBox[current_question - 1].appendChild(box);
                } else {
                    box.style.height = "50px";
                    box.style.width = "100%";
                    box.style.backgroundColor = "#FF0000";
                    box.style.borderRadius = "10px";
                    box.style.paddingTop = "12px";
                    box.style.fontSize = "15px";
                    box.style.fontWeight = "bold";
                    box.innerHTML = check.message;
                    messageBox[current_question - 1].appendChild(box);
                }



                var checkButton = document.querySelectorAll(".check_answer");
                checkButton.forEach(function(e) {
                    e.value = "Next";
                });
            }
        });
    });

});
