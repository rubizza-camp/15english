$(document).ready(function() {
    var current_question = 1;
    var collectionSize = document.getElementById("questions_wrapper").children.length;
    var currentQuestionForm = $(`#question-box-${current_question}`);
    currentQuestionForm.show().siblings().hide();

    $('#questions_wrapper').on('click', '.check_answer', function (e) {
        e.preventDefault();
        currentQuestionForm = $(`#question-box-${current_question}`);
        var question_id = $(`#question-box-${current_question}`).find('#question_id').val();
        var user_id = $(`#question-box-${current_question}`).find('#user_id').val();
        var learning_process_state_id = $(`#question-box-${current_question}`).find('#learning_process_state_id').val();
        var checkButton = document.getElementsByClassName("check_answer");

        if ($(`#question-box-${current_question} form input[type="text"]`)[0] != null) {
            var answerPickedByUser = currentQuestionForm.find('input[name="answer_image"]').prop('value');
        } else {
            var answerPickedByUser = currentQuestionForm.find('input[name="answer"]:checked').prop('value');
        }

        if (checkButton[0].value === "Next") {
            current_question += 1;
            if (current_question == collectionSize) {
                window.location.href = JsRoutesRails.course_path({id: 1})
            } else {
                var checkButton = document.querySelectorAll(".check_answer");
                checkButton.forEach(function(e) {
                    e.value = "Check";
                });
                $(`#question-box-${current_question}`).show().siblings().hide();
                return;
            }
        }

        $.ajax({
            url: '/en/answer',
            type: 'POST',
            dataType: "json",
            data: { answer: { answer: answerPickedByUser, question_id: question_id, user_id: user_id, learning_process_state_id: learning_process_state_id } },
            success: function (check) {
                var messageBox = $(`#question-box-${current_question} form .check-message`);
                var box = document.createElement('div');
                box.className = "box";
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
                    messageBox.append(box);
                } else {
                    box.style.height = "50px";
                    box.style.width = "100%";
                    box.style.backgroundColor = "#FF0000";
                    box.style.borderRadius = "10px";
                    box.style.paddingTop = "12px";
                    box.style.fontSize = "15px";
                    box.style.fontWeight = "bold";
                    box.innerHTML = check.message;
                    messageBox.append(box);
                }

                var checkButton = document.querySelectorAll(".check_answer");
                checkButton.forEach(function(e) {
                    e.value = "Next";
                });
            }
        });
    });

});
