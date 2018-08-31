$(document).ready(function () {
    var current_question = 0;
    var cards = document.getElementsByClassName("card w-75 mx-auto border-info quest");
    $(`#levelModal`).modal({
        keyboard: true
    });
    $(".btn.finish-test-button").toggle();
    $(".form-group.radio_buttons.optional.test_level_session_answers_answer")
        .wrap("<div class=\"card-body mx-auto\"></div>");
    $(".col-form-label.pt-0").wrap("<h4 class='questions-title'></h4>");
    for (var i = 0; i < cards.length; i++) {
        if (i === 0) {
            cards[i].style.display = "block";
        }
        var header = cards[i].getElementsByClassName("card-header mx-auto quest");
        header[0].innerHTML += " #" + (i + 1) + "/" + cards.length;
        cards[i].id = "card_" + i;
    }

    $(".btn.next-question").on("click", function () {
        $(`#card_${current_question}`).toggle();
        current_question += 1;
        $(`#card_${current_question}`).toggle();
        if (current_question === cards.length - 1) {
            $(".btn.next-question").toggle();
            $(`.btn.finish-test-button`).toggle();
        }
    })
});