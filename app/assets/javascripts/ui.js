$(document).ready(function () {

//show all sequences on teacher page
$(document).on('click', ".show-all-sequences",
function () {
  $(this).html('Hide All Sequences');
  $(this).addClass('hide-all-sequences');
  $(this).removeClass('show-all-sequences');
  $(".inactive").toggle();
});

// hide all sequences on teacher page
$(document).on('click', ".hide-all-sequences",
function () {
  $(this).html('Show All Sequences');
  $(this).addClass('show-all-sequences');
  $(this).removeClass('hide-all-sequences');
  $(".inactive").toggle();
});

$(document).on('click', ".read-more-1",
function () {
  $(this).remove();
  $('.read-more-section-1').toggle();
});

$(document).on('click', ".read-more-2",
function () {
  $(this).remove();
  $('.read-more-section-2').toggle();
});

});