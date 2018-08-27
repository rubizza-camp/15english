$(document).ready(function() {
  var current_question = 0;
  var size = $('.temp_information').data('temp');
  $(`#question_${current_question}`).toggle();
  $(`#levelModal`).modal({
      keyboard: true
  });

  $(`#next_question`).on("click", function() {
    $(`#question_${current_question}`).toggle();
    current_question += 1;
    if (current_question === size - 1) {
        $(`#submit_form_button`).toggle();
        $(`#next_question`).toggle();
    }
    if (current_question < size) {
        $(`#question_${current_question}`).toggle();
    }
  });

  /*$(`#previous_question`).on("click", function() {
    $(`#question_${current_question}`).hide();
    current_question -= 1;
    $(`#question_${current_question}`).show();
  });*/
});
