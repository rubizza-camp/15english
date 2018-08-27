$(function() {
    $('a.ans_link').click(function(event){
        event.preventDefault();
        $('div#<%= escape_javascript(counter.to_s) %>').toggle();
    });
});