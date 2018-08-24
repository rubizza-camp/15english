var checkMessage = document.getElementById("check-message");
var checkButton = document.getElementById("check-answer");


function correctAnswer() {
    var checkMessage = document.getElementById("check-message");
    var message = document.createTextNode("Answer is correct!");
    checkMessage.appendChild(message);
}

function incorrectAnswer() {
    var checkMessage = document.getElementById("check-message");
    var message = document.createTextNode("Answer is incorrect!");
    checkMessage.appendChild(message);
}


// $('#check_answer').click(function (e) {
//     e.preventDefault();
//     debugger;
//
//     $.ajax({
//         url: '/answer',
//         method: 'POST',
//         data: {}
//     })
// });
//
// Rails.ajax({
//     type: "POST",
//     url: "/answer",
//     data: {},
//     success: function(response) {
//         console.log("success");
//     },
//     error: function(response) {
//         console.log("error");
//     }
// })

$.ajax({
    type: "POST",
    url: "/answer",
    data: mydata,
    success: function(data, textStatus, jqXHR){...},
    error: function(jqXHR, textStatus, errorThrown){...}
})
