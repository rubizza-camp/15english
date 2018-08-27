$(document).ready(function() {
  var current_question = 0;
  $(`#question_${current_question}`).show();

  $(`#next_question`).on("click", function() {
    $(`#question_${current_question}`).hide();
    current_question += 1;
    $(`#question_${current_question}`).show();
  });

  $(`#previous_question`).on("click", function() {
    $(`#question_${current_question}`).hide();
    current_question -= 1;
    $(`#question_${current_question}`).show();
  });
});
